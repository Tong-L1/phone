from pykafka import KafkaClient
import json
import os
import random
import time as time0
import urllib.request
import pandas as pd

# 创建生产者
client = KafkaClient(hosts="litong:9092")  # 实例化
topic = client.topics['test1']
producer = topic.get_sync_producer()

# 设置代理
agents = [
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1",
    "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/19.77.34.5 Safari/537.1",
    "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24"
]


def product_reviews(product_id=None):
    score = 0
    k_head = 0
    p = 0
    maxPage = 100

    jcomments=1

    comments=0
    while p < maxPage:
        url = 'https://club.jd.com/comment/skuProductPageComments.action?callback=fetchJSON_comment98&productId={' \
              '}&score={}&sortType=6&page={}&pageSize={}&isShadowSku=0$fold=1 '
        #https://club.jd.com/comment/productPageComments.action?callback=fetchJSON_comment98&productId=100021594694&#
        # score=0&sortType=6&page=0&pageSize=10&isShadowSku=0&fold=1
        url = url.format(product_id, score, p, maxPage)
        # print(url)
        # 仿造请求头，骗过浏览器
        # cookie可以查找自己浏览器中的cookie，直接复制过来
        cookie = ''
        headers = {
            'User-Agent': ''.join(random.sample(agents, 1)),
            'Referer': 'https://item.jd.com/100018902008.html',
            'Cookie': cookie
        }
        # 发起请求
        request = urllib.request.Request(url=url, headers=headers)
        time0.sleep(3)
        try:
            content = urllib.request.urlopen(request).read().decode('gbk')
        except:
            print('第%d页评论代码出错' % p)
            p = p + 1
            continue
        # 去掉多余得到json格式
        content = content.strip('fetchJSON_comment98vv995();')

        try:
            obj = json.loads(content)
        except:
            print('信号不好，再次尝试！')
            print([content])
            print(url)
            continue

        comments = obj['comments']

        if comments != jcomments :
            print('不等于')
            comments = obj['comments']
            if p==0:
                jcomments = comments
            if len(comments) > 0:
                for comment in comments:
                    creationTime = comment['creationTime'][0:13]
                    print('爬取成功')
                    producer.produce(bytes(str(creationTime), encoding='utf-8'))
            else:
                return []
        else:
            print('等于')
            continue

        if p<99:
            p = p + 1
            print(p)
        else:
            p=0


if __name__ == '__main__':
    # 100016799350
    # 100009082466
    # 100009956275
    # 100011650795
    phone_id = 100008348542
    product_reviews(product_id=phone_id)
