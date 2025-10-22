import 'package:sqflite/sqflite.dart';

class DatabaseSeeder {
  Future<void> seedDatabase(Database db) async {
    await db.insert("Categories", {"name": "ملابس"});
    await db.insert("Categories", {"name": "إكسسوارات"});
    await db.insert("Categories", {"name": "إلكترونيات"});
    await db.insert("Categories", {"name": "منتجات تجميل"});
    await db.insert("Categories", {"name": "عقارات"});

    await db.insert("Sub_Categories", {
      "image":
          "https://s3-alpha-sig.figma.com/img/24b0/9622/76e50c480329714a01704f0b21e03eac?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=sMA6l3hO7~-F1HzdtvbnTdHP5qsQn7wLndwMeLr6tcfDxoJR56P-cMYasdTJHGqd4mBYom5fJ8ZA~zM~Gp1e~NwF8LdiD24KpBKft-shvd26lmFOmlvWFmdJs3vASeE8tNwN9-TzxM-pj7S-wo6H1V26PYD4uZknXWO0qv4E0lz4W1wVhQfliguLVgvKtHgWtHDShkyRh56C0nfSgcCcrgDpWW4GxjZPD1cwOy0VAT95M1Mk2ZNgDClFh62sdqgVptsm3UdBdOcHozTz-sR430yQGYSgZpsseu89toyZ0JxDEygR80oU8RNdNClR~ng6j2dZ4bBNaH9sjYHmq3AY1A__",
      "name": "موضة رجالي",
      "category_id": 1,
    });
    await db.insert("Sub_Categories", {
      "image":
          "https://s3-alpha-sig.figma.com/img/d5b3/16d3/502d78a465c435b34fa8e70925fcc045?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=EEHuG3eWpkxo3aLwOnhKgY43jjbB1OHzJBe0NyJS-afisPyu5iyeVio9mD3KfRtnXoNTDp4~WzBsiZ8ZyOvpV8rcDkSLywCW1L82uBnp5SRsEyrsX9G5b7PyXw4~B2L~s0d80HRRMBYz2IRrZH~HyWBx~8YUw6JTz8PNYloEQX5GfHRqttyzSvz1S6P6CbqAqSJ8feptGnSZaCylFk2b586Ur~lFtj1hnaHc9V-zDlQavqnbKzxffKdvZ5pkbFiuWdymz5ZPigiUkeDJxPqUKJQemNprAzcaXYtUhT7jwfm2cjP2p7eskHG7GnXZmJn9JXEufmPwV7cFf~Gjck03zw__",
      "name": "ساعات",
      "category_id": 3,
    });
    await db.insert("Sub_Categories", {
      "image":
          "https://s3-alpha-sig.figma.com/img/1f35/4408/102923fd6961cb072d4ea3a8b2758844?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=iSfe633SycfEKvexAlLoOhPpLqVRQn3EC-P46biBDpJa9eT-~QZu3OVmvD2Diabo1BRje9b73hEZh-V1pWji5kKhZYU3oAeuRXo0kXpZr42K8xk2uoTgW-JZztqJkRf0qxxF3xElVfAzZXNLDXfeWuKSpuLgx1gFo5qCZNNhhMKYBUELZVnZV6LJbivFaeeAJVesDxHabg2ilXCkPnNEDXWd-~0f3nsmRuMpngJzVijQzreT5kILJ~1SYVFdifB~pIzruxdKuluplOcRF8ANp4S6Tcb3b~E4JJQmL1dUrMy11P51N0JvOHHnFaFidca9ZeH7zB~WMBMWhT6yPD8sRw__",
      "name": "موبايلات",
      "category_id": 3,
    });
    await db.insert("Sub_Categories", {
      "image":
          "https://s3-alpha-sig.figma.com/img/aa10/eae4/05657f831bc1879e160e36a0ac7ed48d?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=aqzUIj~dcPMaX~~tZ7U~OAFmGsArH7kyN~ucEQ7Rwtu7puYLQ1PNA8Zk47gKaxO64s7ltqWGR1sHbzc2IplMuLOxMy5yGNOKXQyQtHxkNoOUxSe4hcOjTRKtN42cslNpl5nTRN~KnMSdx-J88hf58qX689ANp7wrwZEFVGWc-IzJcHrzuXQTLj4MOsxxdwC7Uw7AtFaMZ~zt4Frb23QQ4mYHsM2csvHuq-IiDxg8JN0TbiMNOJ9f9u0Z0wDpWTxMZZJptPQhhFieWobtiFYcg~NbHGCGtwCEBBtWzpYfeXQtQhZ~tXiY8ZFOyj8cnhW4S3e4N3bSutQOglDaeKTeCw__",
      "name": "منتجات تجميل",
      "category_id": 4,
    });
    await db.insert("Sub_Categories", {
      "image":
          "https://s3-alpha-sig.figma.com/img/7454/792e/e9714c29e87721d609d750dcad0f28b8?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=SweuqyNduHZ41VRV92IZ9wYrsQ4o5Rsoh0BkA9fSyLvbRkXPbBfG~Xq99RVy4rpI0nPJeR-fEhBK04ehHh1RCjSipXFrFn90kLyViRp7Zrvgma7tIkK1ecSAFDgJvBxNSNmEdLoOD8CMlJ3sAfpmJldz~tgn2FfhFuie0hiRjD-W2yyFdMPr6bKt3-O4SrTTtkbJKMODs1aXsNnCB3MHh702g11Id847NLbpX196xtx5A8gBvAVZ7V-2aWQHhdTUOA6bhAWjUfg50DfQcC6fns4xxJri2tijEvSTmWlrTzTiHFSMn34dcqG4ga-47UO5PGw694rC0T8uGDxOPTJI-A__",
      "name": "فلل",
      "category_id": 5,
    });

    // --------------------- موضة رجالي (subcategory_id = 1) - 8 products ---------------------
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/3939/6c0f/969c78e31feab7577c6a606ad53a21d3?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=AII6~e1ZwCojoxfXIwg8tweZk8R5NC3T-mFa4fZK-auTrI2tPUtT1zIbLIq82NhY008GfAYL~41e0d1MvxY~sKOuknQXakkPqviXN9P36wGMaDeymCNze4xoeW1zw42B-uCn2hc4MXiim~jLlSKT-dnEBxi1G6g2nRKHAnMuaImo1Mq2loTm306AJXVTQ-731qUSECI2IRQUOYO7F0zQSFrqsAy-gZ9OnKB0r-ELY0alLWPMuiQ8MLovJ~hIBfYte2f6DtPW2WcNuGRDBTt0svKCqfZ5gMHRXjU6JylzSncCcl6dxiWULeUlJf5QPxK3l3K4Ls3J74zpdPG8~Tq66w__",
      "name": "قميص من الصوف البني",
      "price": 32000000,
      "discount_percent": 50,
      "sold_count": 3300,
      "subcategory_id": 1,
    });
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/02e4/7cf0/ed554bc399ec7a98c03dccd8f99147c6?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=gc0oE-RFvr7HTA4sXha-NjhETqbKlANgN-p1VZl-7uYSOZr10X17NM7lcPGtj2dpOhrvkgc1mnrn1vl7JH~HSfKPFe6ivyWQxyUYcDZ2rxU3ZGgrbMDOBboCFcSwk7bjVdm10986KFiCMMi6sWIogB5sB58PFuiKKrI7BzCfWUBnyd66ntePqHU9rf5bRAXS1FkI~63kEZJ~HKkmysOTUu8PeGWOInX~KVy7bMyXy7WsWCAsM5F9lvfMXhNrp79tBmwDZgT1ffEEgBap5i~YvR4q4cqnBdDhvBhGMDxTCo-t-M8jgd3y7UySN1uC~qbeR7sut~x5su7LAAlt0CwJGg__",
      "name": "هودي أسود بسيط",
      "price": 32000000,
      "discount_percent": 52,
      "sold_count": 3100,
      "subcategory_id": 1,
    });
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/f97b/967b/0fdcf12befcea140b80fb64dd515f5bf?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=GdPeIMZEd9j9TWSlyqyBLXJ0RDz3yMkRXbnXbCw87r7HbMrHmU1Ria5s-a-s4OmSCelOV~~wWE~0-6Gr1utLxPmVcOFGcN39VG5xuG~UA9GrQqMUeBeEzBkW~BmTXn9FpCxeMupJZNvdRqSWvdfEw4Y4l9wH3xRPHSRsvFnuBWvmV19H8YekrKV1vgcX896u-Mdwi96ugXHkBKQ5mHw13bCRQzMdrdQkaJRCLGC2Tkmm9q5H2PckiUM5Dnn9OFsRJDcxKXW7r6xF3DmntSk1LdCIa981VacyKwWX8sU~IrNLZdx5J515lyx8ah~yy7dqVYSLzTBegm7syQ5f-BEeKQ__",
      "name": "حذاء رياضي أسود أخضر",
      "price": 32000000,
      "discount_percent": 47,
      "sold_count": 2900,
      "subcategory_id": 1,
    });
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/3939/6c0f/969c78e31feab7577c6a606ad53a21d3?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=AII6~e1ZwCojoxfXIwg8tweZk8R5NC3T-mFa4fZK-auTrI2tPUtT1zIbLIq82NhY008GfAYL~41e0d1MvxY~sKOuknQXakkPqviXN9P36wGMaDeymCNze4xoeW1zw42B-uCn2hc4MXiim~jLlSKT-dnEBxi1G6g2nRKHAnMuaImo1Mq2loTm306AJXVTQ-731qUSECI2IRQUOYO7F0zQSFrqsAy-gZ9OnKB0r-ELY0alLWPMuiQ8MLovJ~hIBfYte2f6DtPW2WcNuGRDBTt0svKCqfZ5gMHRXjU6JylzSncCcl6dxiWULeUlJf5QPxK3l3K4Ls3J74zpdPG8~Tq66w__",
      "name": "قميص بأكمام قصيرة من الكتان",
      "price": 32000000,
      "discount_percent": 50,
      "sold_count": 2500,
      "subcategory_id": 1,
    });
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/02e4/7cf0/ed554bc399ec7a98c03dccd8f99147c6?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=gc0oE-RFvr7HTA4sXha-NjhETqbKlANgN-p1VZl-7uYSOZr10X17NM7lcPGtj2dpOhrvkgc1mnrn1vl7JH~HSfKPFe6ivyWQxyUYcDZ2rxU3ZGgrbMDOBboCFcSwk7bjVdm10986KFiCMMi6sWIogB5sB58PFuiKKrI7BzCfWUBnyd66ntePqHU9rf5bRAXS1FkI~63kEZJ~HKkmysOTUu8PeGWOInX~KVy7bMyXy7WsWCAsM5F9lvfMXhNrp79tBmwDZgT1ffEEgBap5i~YvR4q4cqnBdDhvBhGMDxTCo-t-M8jgd3y7UySN1uC~qbeR7sut~x5su7LAAlt0CwJGg__",
      "name": "جاكيت جلد أسود",
      "price": 34000000,
      "discount_percent": 35,
      "sold_count": 1800,
      "subcategory_id": 1,
    });
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/f97b/967b/0fdcf12befcea140b80fb64dd515f5bf?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=GdPeIMZEd9j9TWSlyqyBLXJ0RDz3yMkRXbnXbCw87r7HbMrHmU1Ria5s-a-s4OmSCelOV~~wWE~0-6Gr1utLxPmVcOFGcN39VG5xuG~UA9GrQqMUeBeEzBkW~BmTXn9FpCxeMupJZNvdRqSWvdfEw4Y4l9wH3xRPHSRsvFnuBWvmV19H8YekrKV1vgcX896u-Mdwi96ugXHkBKQ5mHw13bCRQzMdrdQkaJRCLGC2Tkmm9q5H2PckiUM5Dnn9OFsRJDcxKXW7r6xF3DmntSk1LdCIa981VacyKwWX8sU~IrNLZdx5J515lyx8ah~yy7dqVYSLzTBegm7syQ5f-BEeKQ__",
      "name": "حذاء كاجوال بني",
      "price": 31500000,
      "discount_percent": 45,
      "sold_count": 1500,
      "subcategory_id": 1,
    });
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/3939/6c0f/969c78e31feab7577c6a606ad53a21d3?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=AII6~e1ZwCojoxfXIwg8tweZk8R5NC3T-mFa4fZK-auTrI2tPUtT1zIbLIq82NhY008GfAYL~41e0d1MvxY~sKOuknQXakkPqviXN9P36wGMaDeymCNze4xoeW1zw42B-uCn2hc4MXiim~jLlSKT-dnEBxi1G6g2nRKHAnMuaImo1Mq2loTm306AJXVTQ-731qUSECI2IRQUOYO7F0zQSFrqsAy-gZ9OnKB0r-ELY0alLWPMuiQ8MLovJ~hIBfYte2f6DtPW2WcNuGRDBTt0svKCqfZ5gMHRXjU6JylzSncCcl6dxiWULeUlJf5QPxK3l3K4Ls3J74zpdPG8~Tq66w__",
      "name": "قميص قطن كلاسيكي",
      "price": 28000000,
      "discount_percent": 0,
      "subcategory_id": 1,
    });
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/02e4/7cf0/ed554bc399ec7a98c03dccd8f99147c6?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=gc0oE-RFvr7HTA4sXha-NjhETqbKlANgN-p1VZl-7uYSOZr10X17NM7lcPGtj2dpOhrvkgc1mnrn1vl7JH~HSfKPFe6ivyWQxyUYcDZ2rxU3ZGgrbMDOBboCFcSwk7bjVdm10986KFiCMMi6sWIogB5sB58PFuiKKrI7BzCfWUBnyd66ntePqHU9rf5bRAXS1FkI~63kEZJ~HKkmysOTUu8PeGWOInX~KVy7bMyXy7WsWCAsM5F9lvfMXhNrp79tBmwDZgT1ffEEgBap5i~YvR4q4cqnBdDhvBhGMDxTCo-t-M8jgd3y7UySN1uC~qbeR7sut~x5su7LAAlt0CwJGg__",
      "name": "سترة بقلنسوة رمادية",
      "price": 30000000,
      "discount_percent": 40,
      "sold_count": 2100,
      "subcategory_id": 1,
    });

    // --------------------- ساعات (subcategory_id = 2) - 8 products ---------------------
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/d5b3/16d3/502d78a465c435b34fa8e70925fcc045?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=EEHuG3eWpkxo3aLwOnhKgY43jjbB1OHzJBe0NyJS-afisPyu5iyeVio9mD3KfRtnXoNTDp4~WzBsiZ8ZyOvpV8rcDkSLywCW1L82uBnp5SRsEyrsX9G5b7PyXw4~B2L~s0d80HRRMBYz2IRrZH~HyWBx~8YUw6JTz8PNYloEQX5GfHRqttyzSvz1S6P6CbqAqSJ8feptGnSZaCylFk2b586Ur~lFtj1hnaHc9V-zDlQavqnbKzxffKdvZ5pkbFiuWdymz5ZPigiUkeDJxPqUKJQemNprAzcaXYtUhT7jwfm2cjP2p7eskHG7GnXZmJn9JXEufmPwV7cFf~Gjck03zw__",
      "name": "ساعة ذكية موديل S",
      "price": 7200,
      "discount_percent": 10,
      "sold_count": 4000,
      "subcategory_id": 2,
    });
    await db.insert("Products", {
      "image":
          "https://i.postimg.cc/JzdXJxL8/pngtree-the-art-of-investing-in-vintage-watches-png-image-13267317.png",
      "name": "ساعة كلاسيك ستانلس ستيل",
      "price": 3200,
      "discount_percent": 20,
      "subcategory_id": 2,
    });
    await db.insert("Products", {
      "image":
          "https://i.postimg.cc/fbK6BV87/pngtree-wristwatch-analog-classic-brown-leather-strap-watch-png-image-10001818.png",
      "name": "ساعة فاخرة جلدية",
      "price": 12500,
      "discount_percent": 12,
      "subcategory_id": 2,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/WpBTDJCt/image.png",
      "name": "ساعة رياضية مقاومة للماء",
      "price": 2600,
      "discount_percent": 0,
      "sold_count": 900,
      "subcategory_id": 2,
    });
    await db.insert("Products", {
      "image":
          "https://i.postimg.cc/JzdXJxL8/pngtree-the-art-of-investing-in-vintage-watches-png-image-13267317.png",
      "name": "ساعة أنالوج بحزام معدني",
      "price": 4100,
      "discount_percent": 15,
      "sold_count": 700,
      "subcategory_id": 2,
    });
    await db.insert("Products", {
      "image":
          "https://i.postimg.cc/fbK6BV87/pngtree-wristwatch-analog-classic-brown-leather-strap-watch-png-image-10001818.png",
      "name": "ساعة رقمية متعددة الوظائف",
      "price": 1900,
      "discount_percent": 22,
      "sold_count": 850,
      "subcategory_id": 2,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/WpBTDJCt/image.png",
      "name": "ساعة رسمية أنيقة",
      "price": 5400,
      "discount_percent": 8,
      "sold_count": 420,
      "subcategory_id": 2,
    });
    await db.insert("Products", {
      "image":
          "https://i.postimg.cc/JzdXJxL8/pngtree-the-art-of-investing-in-vintage-watches-png-image-13267317.png",
      "name": "سوار ذكي متعدد القياسات",
      "price": 900,
      "discount_percent": 30,
      "sold_count": 2300,
      "subcategory_id": 2,
    });

    // --------------------- موبايلات (subcategory_id = 3) - 8 products ---------------------
    await db.insert("Products", {
      "image":
          "https://s3-alpha-sig.figma.com/img/1f35/4408/102923fd6961cb072d4ea3a8b2758844?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=iSfe633SycfEKvexAlLoOhPpLqVRQn3EC-P46biBDpJa9eT-~QZu3OVmvD2Diabo1BRje9b73hEZh-V1pWji5kKhZYU3oAeuRXo0kXpZr42K8xk2uoTgW-JZztqJkRf0qxxF3xElVfAzZXNLDXfeWuKSpuLgx1gFo5qCZNNhhMKYBUELZVnZV6LJbivFaeeAJVesDxHabg2ilXCkPnNEDXWd-~0f3nsmRuMpngJzVijQzreT5kILJ~1SYVFdifB~pIzruxdKuluplOcRF8ANp4S6Tcb3b~E4JJQmL1dUrMy11P51N0JvOHHnFaFidca9ZeH7zB~WMBMWhT6yPD8sRw__",
      "name": "آيفون 15 برو ماكس",
      "price": 58000,
      "discount_percent": 15,
      "sold_count": 520,
      "subcategory_id": 3,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/JhfP3MLb/image.png",
      "name": "سامسونج جالكسي S24 ألترا",
      "price": 42000,
      "discount_percent": 10,
      "sold_count": 890,
      "subcategory_id": 3,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/hGd0t6dx/image.png",
      "name": "هواوي نوفا الجديد",
      "price": 22000,
      "discount_percent": 20,
      "sold_count": 670,
      "subcategory_id": 3,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/kgkxzshj/image.png",
      "name": "جوجل بيكسل 8 برو",
      "price": 36000,
      "discount_percent": 12,
      "sold_count": 340,
      "subcategory_id": 3,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/JhfP3MLb/image.png",
      "name": "موبايل بكاميرا احترافية",
      "price": 29500,
      "discount_percent": 18,
      "sold_count": 210,
      "subcategory_id": 3,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/hGd0t6dx/image.png",
      "name": "موبايل قابل للطي موديل X",
      "price": 74000,
      "discount_percent": 8,
      "sold_count": 95,
      "subcategory_id": 3,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/kgkxzshj/image.png",
      "name": "موبايل بسعة تخزين 512 جيجا",
      "price": 33000,
      "discount_percent": 14,
      "sold_count": 410,
      "subcategory_id": 3,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/JhfP3MLb/image.png",
      "name": "هاتف اقتصادي بشاشة كبيرة",
      "price": 8500,
      "discount_percent": 25,
      "sold_count": 1500,
      "subcategory_id": 3,
    });

    // --------------------- منتجات تجميل (subcategory_id = 4) - 8 products ---------------------
    await db.insert("Products", {
      "image": "https://s3-alpha-sig.figma.com/img/aa10/eae4/05657f831bc1879e160e36a0ac7ed48d?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=aqzUIj~dcPMaX~~tZ7U~OAFmGsArH7kyN~ucEQ7Rwtu7puYLQ1PNA8Zk47gKaxO64s7ltqWGR1sHbzc2IplMuLOxMy5yGNOKXQyQtHxkNoOUxSe4hcOjTRKtN42cslNpl5nTRN~KnMSdx-J88hf58qX689ANp7wrwZEFVGWc-IzJcHrzuXQTLj4MOsxxdwC7Uw7AtFaMZ~zt4Frb23QQ4mYHsM2csvHuq-IiDxg8JN0TbiMNOJ9f9u0Z0wDpWTxMZZJptPQhhFieWobtiFYcg~NbHGCGtwCEBBtWzpYfeXQtQhZ~tXiY8ZFOyj8cnhW4S3e4N3bSutQOglDaeKTeCw__",
      "name": "أحمر شفاه طويل الثبات",
      "price": 320,
      "discount_percent": 25,
      "sold_count": 450,
      "subcategory_id": 4,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/26Xj9c0Z/image.png",
      "name": "كريم ترطيب يومي للبشرة",
      "price": 480,
      "discount_percent": 15,
      "sold_count": 600,
      "subcategory_id": 4,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/k5T7DY3j/image.png",
      "name": "عطر بخاخ رجالي 100 مل",
      "price": 1250,
      "discount_percent": 10,
      "sold_count": 320,
      "subcategory_id": 4,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/26Xj9c0Z/image.png",
      "name": "كريم أساس بمقياس لون متنوع",
      "price": 380,
      "discount_percent": 20,
      "sold_count": 210,
      "subcategory_id": 4,
    });
    await db.insert("Products", {
      "image": "https://s3-alpha-sig.figma.com/img/aa10/eae4/05657f831bc1879e160e36a0ac7ed48d?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=aqzUIj~dcPMaX~~tZ7U~OAFmGsArH7kyN~ucEQ7Rwtu7puYLQ1PNA8Zk47gKaxO64s7ltqWGR1sHbzc2IplMuLOxMy5yGNOKXQyQtHxkNoOUxSe4hcOjTRKtN42cslNpl5nTRN~KnMSdx-J88hf58qX689ANp7wrwZEFVGWc-IzJcHrzuXQTLj4MOsxxdwC7Uw7AtFaMZ~zt4Frb23QQ4mYHsM2csvHuq-IiDxg8JN0TbiMNOJ9f9u0Z0wDpWTxMZZJptPQhhFieWobtiFYcg~NbHGCGtwCEBBtWzpYfeXQtQhZ~tXiY8ZFOyj8cnhW4S3e4N3bSutQOglDaeKTeCw__",
      "name": "مسكارا لمظهر مكثف",
      "price": 230,
      "discount_percent": 18,
      "sold_count": 470,
      "subcategory_id": 4,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/26Xj9c0Z/image.png",
      "name": "قناع وجه مرطب",
      "price": 150,
      "discount_percent": 30,
      "sold_count": 130,
      "subcategory_id": 4,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/26Xj9c0Z/image.png",
      "name": "واقي شمس بعامل حماية 50",
      "price": 200,
      "discount_percent": 12,
      "sold_count": 300,
      "subcategory_id": 4,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/k5T7DY3j/image.png",
      "name": "سيروم نهاري مضاد للأكسدة",
      "price": 620,
      "discount_percent": 22,
      "sold_count": 180,
      "subcategory_id": 4,
    });

    // --------------------- فلل (subcategory_id = 5) - 8 products ---------------------
    await db.insert("Products", {
      "image": "https://s3-alpha-sig.figma.com/img/7454/792e/e9714c29e87721d609d750dcad0f28b8?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=SweuqyNduHZ41VRV92IZ9wYrsQ4o5Rsoh0BkA9fSyLvbRkXPbBfG~Xq99RVy4rpI0nPJeR-fEhBK04ehHh1RCjSipXFrFn90kLyViRp7Zrvgma7tIkK1ecSAFDgJvBxNSNmEdLoOD8CMlJ3sAfpmJldz~tgn2FfhFuie0hiRjD-W2yyFdMPr6bKt3-O4SrTTtkbJKMODs1aXsNnCB3MHh702g11Id847NLbpX196xtx5A8gBvAVZ7V-2aWQHhdTUOA6bhAWjUfg50DfQcC6fns4xxJri2tijEvSTmWlrTzTiHFSMn34dcqG4ga-47UO5PGw694rC0T8uGDxOPTJI-A__",
      "name": "فيلا فاخرة في القاهرة الجديدة",
      "price": 7200000,
      "discount_percent": 5,
      "sold_count": 8,
      "subcategory_id": 5,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/J0MwqbL6/image.png",
      "name": "فيلا مطلة على البحر في الإسكندرية",
      "price": 12500000,
      "discount_percent": 8,
      "sold_count": 3,
      "subcategory_id": 5,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/NjVWVhtL/image.png",
      "name": "فيلا فاخرة بمساحة واسعة",
      "price": 9800000,
      "discount_percent": 6,
      "sold_count": 5,
      "subcategory_id": 5,
    });
    await db.insert("Products", {
      "image": "https://s3-alpha-sig.figma.com/img/7454/792e/e9714c29e87721d609d750dcad0f28b8?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=SweuqyNduHZ41VRV92IZ9wYrsQ4o5Rsoh0BkA9fSyLvbRkXPbBfG~Xq99RVy4rpI0nPJeR-fEhBK04ehHh1RCjSipXFrFn90kLyViRp7Zrvgma7tIkK1ecSAFDgJvBxNSNmEdLoOD8CMlJ3sAfpmJldz~tgn2FfhFuie0hiRjD-W2yyFdMPr6bKt3-O4SrTTtkbJKMODs1aXsNnCB3MHh702g11Id847NLbpX196xtx5A8gBvAVZ7V-2aWQHhdTUOA6bhAWjUfg50DfQcC6fns4xxJri2tijEvSTmWlrTzTiHFSMn34dcqG4ga-47UO5PGw694rC0T8uGDxOPTJI-A__",
      "name": "فيلا حديثة بالقرب من الخدمات",
      "price": 4500000,
      "discount_percent": 7,
      "sold_count": 10,
      "subcategory_id": 5,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/J0MwqbL6/image.png",
      "name": "فيلا مع حديقة خاصة",
      "price": 6300000,
      "discount_percent": 5,
      "sold_count": 4,
      "subcategory_id": 5,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/J0MwqbL6/image.png",
      "name": "فيلا على البحر مباشرة",
      "price": 15000000,
      "discount_percent": 10,
      "sold_count": 2,
      "subcategory_id": 5,
    });
    await db.insert("Products", {
      "image": "https://s3-alpha-sig.figma.com/img/7454/792e/e9714c29e87721d609d750dcad0f28b8?Expires=1762128000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=SweuqyNduHZ41VRV92IZ9wYrsQ4o5Rsoh0BkA9fSyLvbRkXPbBfG~Xq99RVy4rpI0nPJeR-fEhBK04ehHh1RCjSipXFrFn90kLyViRp7Zrvgma7tIkK1ecSAFDgJvBxNSNmEdLoOD8CMlJ3sAfpmJldz~tgn2FfhFuie0hiRjD-W2yyFdMPr6bKt3-O4SrTTtkbJKMODs1aXsNnCB3MHh702g11Id847NLbpX196xtx5A8gBvAVZ7V-2aWQHhdTUOA6bhAWjUfg50DfQcC6fns4xxJri2tijEvSTmWlrTzTiHFSMn34dcqG4ga-47UO5PGw694rC0T8uGDxOPTJI-A__",
      "name": "فيلا سكنية في منطقة هادئة",
      "price": 3800000,
      "discount_percent": 4,
      "sold_count": 6,
      "subcategory_id": 5,
    });
    await db.insert("Products", {
      "image": "https://i.postimg.cc/J0MwqbL6/image.png",
      "name": "فيلا جبلية بإطلالة مميزة",
      "price": 8900000,
      "discount_percent": 9,
      "sold_count": 1,
      "subcategory_id": 5,
    });
  }
}
