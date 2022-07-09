import json
import os
import random
import time as time0
import urllib.request
import pandas as pd

# 设置代理
agents = [
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1",
    "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/19.77.34.5 Safari/537.1",
    "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24"
]


def product_reviews():
    root_dir = '民事案例'
    os.makedirs(root_dir, exist_ok=True)
    p = 1
    maxPage = 10
    while p < maxPage:
        url = 'http://www.fabang.com/ask/browser_0_0_5_0_3_{}.html'

        url = url.format(p)
        # print(url)
        # 仿造请求头，骗过浏览器
        # cookie可以查找自己浏览器中的cookie，直接复制过来
        cookie = ''
        headers = {
            'User-Agent': ''.join(random.sample(agents, 1)),
            'Referer': 'http://www.fabang.com/ask/browser_0_0_5_0_3_1.html',
            'Cookie': cookie
        }
        # 发起请求
        request = urllib.request.Request(url=url, headers=headers)
        time0.sleep(2.5)
        try:
            content = urllib.request.urlopen(request).read().decode('gbk')
        except:
            print('第%d页代码出错' % p)
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
        # 产品评论总结
        productCommentSummary = obj['productCommentSummary']
        dict_pars_info = {
            '好评率': str(productCommentSummary['goodRateShow']),
            '差评率': str(productCommentSummary['poorRateShow']),
            'poorCountStr': str(productCommentSummary['poorCountStr']),
            '平均分': str(productCommentSummary['averageScore']),
            'generalCountStr': str(productCommentSummary['generalCountStr']),
            'oneYear': str(productCommentSummary['oneYear']),
            'showCount': str(productCommentSummary['showCount']),
            'showCountStr': str(productCommentSummary['showCountStr']),
            '好评数': str(productCommentSummary['goodCount']),
            'generalRate': str(productCommentSummary['generalRate']),
            '中评数': str(productCommentSummary['generalCount']),
            'skuId': str(productCommentSummary['skuId']),
            'goodCountStr': str(productCommentSummary['goodCountStr']),
            'poorRate': str(productCommentSummary['poorRate']),
            'afterCount': str(productCommentSummary['afterCount']),
            'goodRateStyle': str(productCommentSummary['goodRateStyle']),
            '差评数': str(productCommentSummary['poorCount']),
            # 'skuIds': str(productCommentSummary['skuIds']),
            'poorRateStyle': str(productCommentSummary['poorRateStyle']),
            'generalRateStyle': str(productCommentSummary['generalRateStyle']),
            'commentCountStr': str(productCommentSummary['commentCountStr']),
            'commentCount': str(productCommentSummary['commentCount']),
            '商品id': str(productCommentSummary['productId']),
            'afterCountStr': str(productCommentSummary['afterCountStr']),
            'goodRate': str(productCommentSummary['goodRate']),
            '中评率': str(productCommentSummary['generalRateShow'])
        }
        if len(comments) > 0:
            for comment in comments:
                uid = comment['id']
                guid = comment['guid']
                content = comment['content'].replace("\n", "")
                name = comment['referenceName']
                creationTime = comment['creationTime']
                isTop = comment['isTop']
                referenceTime = comment['referenceTime']
                firstCategory = comment['firstCategory']
                secondCategory = comment['secondCategory']
                thirdCategory = comment['thirdCategory']
                replyCount = comment['replyCount']
                score = comment['score']
                nickname = comment['nickname']
                userClient = comment['userClient']
                plusAvailable = comment['plusAvailable']
                isMobile = comment['mobileVersion']
                days = comment['days']
                afterDays = comment['afterDays']

                try:
                    productColor = comment['productColor']
                except:
                    productColor = ''

                try:
                    productSize = comment['productSize']
                except:
                    productSize = ''

                item = {
                    'uid': uid,
                    'guid': guid,
                    'content': content,
                    'name': name,
                    'creationTime': creationTime,
                    'isTop': isTop,
                    'referenceTime': referenceTime,
                    'firstCategory': firstCategory,
                    'secondCategory': secondCategory,
                    'thirdCategory': thirdCategory,
                    'replyCount': replyCount,
                    'score': score,
                    'nickname': nickname,
                    'userClient': userClient,
                    'productColor': productColor,
                    'productSize': productSize,
                    'plusAvailable': plusAvailable,
                    'isMobile': isMobile,
                    'days': days,
                    'afterDays': afterDays,
                }
                item.update(dict_pars_info)
                string = str(item)

                # 1.保存为csv格式
                item_dataframe = pd.DataFrame([item])
                # print(item_dataframe)
                if k_head == 0:
                    item_dataframe.to_csv(root_dir + '/%d.csv' % product_id, mode='w', header=True, index=False,
                                          encoding='gbk')
                    k_head += 1
                else:
                    item_dataframe.to_csv(root_dir + '/%d.csv' % product_id, mode='a', header=False, index=False,
                                          encoding='gbk')

                # 2.保存成txt
                fp = open(root_dir + '/%d.txt' % product_id, 'a', encoding='gbk')
                fp.write(string + '\n')
                fp.close()
            print('%s-page---finish(%s/%s)' % (p + 1, p + 1, maxPage))
        else:
            return []
        p = p + 1


if __name__ == '__main__':
    # 100016799350
    # 100009082466
    # 100009956275
    # 100011650795
    phone_id = 100011650795
    product_reviews(product_id=phone_id)
