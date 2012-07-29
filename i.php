<?
$data ='
<table class="table1_eggs4" style="margin: 5px 9px 0px 0px; font-size:14px;width:100%">
    <tbody><tr>
        <td>111</td>
        <td>aasd</td>
        <td style="font-size:9px;">
            Покупка		</td>
        <td></td>
        <td style="font-size:9px;">
            Продажа		</td>

    </tr>
    <tr style="height: 21px;">
        <td style="text-align:center; width:30px;">
            <a href="/moscow/ru/quotes/currencies/timeline/index.php?qid190=3">
                <img src="/common/img/eggs/usd_small.png" alt="USD" title="Доллар США">
            </a>
        </td>
        <td class="img">
            <img src="/common/img/0.gif" width="5" height="3" alt=""> 							</td>
        <td style="font-weight:bold;font-size:14px												">
            31,70			</td>
        <td class="img">
            <img src="/common/img/0.gif" width="5" height="3" alt="">							</td>
        <td style="font-weight:bold;font-size:14px												">
            32,50			</td>
    </tr>
    <tr style="height: 21px;">
        <td style="text-align:center; width:30px;">
            <a href="/moscow/ru/quotes/currencies/timeline/index.php?qid190=2">
                <img src="/common/img/eggs/euro_small.png" alt="EUR" title="Евро">
            </a>
        </td>
        <td class="img">
            <img src="/common/img/0.gif" width="5" height="3" alt=""> 							</td>
        <td style="font-weight:bold;font-size:14px												">
            38,70			</td>
        <td class="img">
            <img src="/common/img/0.gif" width="5" height="3" alt="">							</td>
        <td style="font-weight:bold;font-size:14px												">
            39,55			</td>
    </tr>
    </tbody></table>
';

preg_match_all('|<td\b[^>]*>(.*?)</td>|s', $data, $a);

print_r($a);

?>