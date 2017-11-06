.class public Lcom/sec/android/app/billing/helper/UPHelper;
.super Ljava/lang/Object;
.source "UPHelper.java"


# static fields
.field public static final ACTION_CREDIT_CARD:Ljava/lang/String; = "CREDIT_CARD"

.field public static final ACTION_PAYMENT:Ljava/lang/String; = "PAYMENT"

.field public static final AIDL_RESULT_ERROR:I = 0x3

.field public static final AIDL_RESULT_FAIL:I = 0x2

.field public static final AIDL_RESULT_OK:I = 0x1

.field public static final AIDL_SENDING_RESULT_ERROR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIDL_SENDING_RESULT_FAIL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIDL_SENDING_RESULT_OK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final API_VERSION:I = 0x4e88
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BILLING_PACKAGE:Ljava/lang/String; = "com.sec.android.app.billing"

.field public static final CHECK_RESULT_DISABLED:I = 0x3

.field public static final CHECK_RESULT_INVALID:I = 0x2

.field public static final CHECK_RESULT_OK:I = 0x0

.field public static final CHECK_RESULT_UNINSTALLED:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field private static final REQUEST_ACTION:Ljava/lang/String; = "REQUEST_ACTION"

.field private static final REQUEST_CODE:Ljava/lang/String; = "REQUEST_CODE"

.field private static final REQUEST_DATA:Ljava/lang/String; = "REQUEST_DATA"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final RESPONSE_INTENT:Ljava/lang/String; = "BILLING_INTENT"

.field private static final RESPONSE_INTENT_EXIST:Ljava/lang/String; = "BILLING_INTENT_EXIST"

.field public static final RESPONSE_MESSAGE:Ljava/lang/String; = "RESPONSE_MESSAGE"

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x3

.field public static final RESULT_ID:Ljava/lang/String; = "ERROR_ID"

.field public static final RESULT_MESSAGE:Ljava/lang/String; = "ERROR_MESSAGE"

.field public static final RESULT_OK:I = 0x1

.field public static final RESULT_PENDING:I = 0x4

.field public static final RESULT_RECEIPT:Ljava/lang/String; = "PAYMENT_RECEITE"

.field public static final RESULT_RECEITE:Ljava/lang/String; = "PAYMENT_RECEITE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_SIGNATURE:Ljava/lang/String; = "SIGNATURE"

.field public static final TAG:Ljava/lang/String; = "UPHelper"

.field public static final UP_CLIENT_ACTIVITY_RESULT_CANCELD:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_ERROR_ID:Ljava/lang/String; = "ERROR_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_ERROR_MESSAGE:Ljava/lang/String; = "ERROR_MESSAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_FAILURE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_OK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_PAYMENT_RECEITE:Ljava/lang/String; = "PAYMENT_RECEITE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_PENDING:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_SIGNATURE:Ljava/lang/String; = "SIGNATURE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_FAIL:I = 0xb

.field public static final UP_CLIENT_OK:I = 0xa

.field public static final UP_CLIENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.billing"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION:I = 0x4e88

.field private static context:Landroid/content/Context;

.field private static iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

.field private static serviceConnection:Landroid/content/ServiceConnection;

.field private static setup:Z

.field private static upHelper:Lcom/sec/android/app/billing/helper/UPHelper;

.field private static validation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    .line 80
    sput-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    .line 81
    sput-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->upHelper:Lcom/sec/android/app/billing/helper/UPHelper;

    .line 84
    const-string v0, "308203863082026ea003020102020452ccda4d300d06092a864886f70d0101050500308184310b3009060355040613024b52311430120603550408130b4b79656f6e6767692d646f3111300f060355040713085375776f6e2d7369310c300a060355040a13034d534331243022060355040b131b5365727669636520506c6174666f726d204465762e2047726f7570311830160603550403130f53616d73756e672042696c6c696e67301e170d3134303130383034353534315a170d3434303130313034353534315a308184310b3009060355040613024b52311430120603550408130b4b79656f6e6767692d646f3111300f060355040713085375776f6e2d7369310c300a060355040a13034d534331243022060355040b131b5365727669636520506c6174666f726d204465762e2047726f7570311830160603550403130f53616d73756e672042696c6c696e6730820122300d06092a864886f70d01010105000382010f003082010a02820101009cb656d610ee3224f331bcbfb1dfbb6ac75470edf14bf91d29c7e580b733d8241e601ccf1aeb75174f5779283f98349adbcfd530c3f91e4a8e90ff884b73c45cb124318e42d236a4c9bb74079237df8c69629f89ec0b8ab0df668178a5fc765185f8f3d5ba38a1da17e231c4c30f774e5aadfedc0b243395af55bb082f22252706e57ab91eaf8a33b0d78817531c18100e5fc3b8f6a7bbab860e59189f0408d0be07d6938476e194b18245c45b01d6eaee7ede7736e49500004ce3fcf95e9e1e53a7b057b4ce8dc62303529b1447fff51087b44339601b2a440feb9cb23a4477644aa49f4243d7b7902d61512c03922d991e397ac5c38edc71fbb643741125150203010001300d06092a864886f70d0101050500038201010008770c18b3fbbf72fa240c2a9223eb2162e2138bdcdb58a83b4337c4616e5e20bb134331896b2bb8a16810636f89758d8b214a2c3e4ec12569c5e031ecc7d55550e96de6ebc9af5f923e5e3ab284a36de00452f0665ade5389f97f3ac04cb03ce01dd4ae90c734775768d3dcfdd3ebddf9f8b508ac42b679c743549dd661cd2816cc5946ae600458e1fe47c16a97c261a0cef21ef48699fde0ddb633cd9b578efead3522bd2b73e01ba72e6e52cb8730439279c0d7e3d07a09e50c22a762cdb91a309a1def9487b703b65dc3c0f6ae908bda8b4cc42aca67f5e84014b041075682fdba50c32bed93fb24c5f8769e308290bbf46ec3cad77231bb39782becdd78"

    sput-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->validation:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "setContext"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/billing/service/IBillingService;)V
    .locals 0

    .prologue
    .line 82
    sput-object p0, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    return-void
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 79
    sput-boolean p0, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/app/billing/helper/UPHelper;ILjava/lang/String;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private static convertObjectToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 12
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 508
    const-string v8, "UPHelper"

    const-string v9, "[VERSION:20104]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v8, "UPHelper"

    const-string v9, "convertObjectToJSONObject"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 512
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 513
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 514
    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 516
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    .end local v7    # "value":Ljava/lang/Object;
    :goto_0
    if-lt v8, v10, :cond_0

    .line 550
    return-object v5

    .line 516
    :cond_0
    aget-object v3, v9, v8

    .line 517
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 518
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 519
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 521
    .restart local v7    # "value":Ljava/lang/Object;
    const-string v11, "CREATOR"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 516
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 525
    :cond_2
    if-eqz v7, :cond_1

    .line 526
    instance-of v11, v7, Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 527
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 529
    :cond_3
    instance-of v11, v7, [Ljava/lang/Object;

    if-eqz v11, :cond_7

    .line 530
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 532
    .local v1, "arrayValue":[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 533
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 535
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v11, v1

    if-lt v4, v11, :cond_4

    .line 542
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 536
    :cond_4
    aget-object v11, v1, v4

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 537
    aget-object v11, v1, v4

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 535
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 538
    :cond_6
    aget-object v11, v1, v4

    if-eqz v11, :cond_5

    .line 539
    aget-object v11, v1, v4

    invoke-static {v11}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 546
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "arrayValue":[Ljava/lang/Object;
    .end local v4    # "i":I
    :cond_7
    invoke-static {v7}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method

.method public static convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 492
    const-string v2, "UPHelper"

    const-string v3, "[VERSION:20104]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v2, "UPHelper"

    const-string v3, "convertObjectToString"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v1, 0x0

    .line 497
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 502
    :goto_0
    return-object v2

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UPHelper"

    const-string v3, "Exception: toJSONString error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-class v1, Lcom/sec/android/app/billing/helper/UPHelper;

    monitor-enter v1

    :try_start_0
    const-string v0, "UPHelper"

    const-string v2, "[VERSION:20104]"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v0, "UPHelper"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->upHelper:Lcom/sec/android/app/billing/helper/UPHelper;

    if-nez v0, :cond_0

    .line 111
    const-string v0, "UPHelper"

    const-string/jumbo v2, "upHelper null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcom/sec/android/app/billing/helper/UPHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/billing/helper/UPHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->upHelper:Lcom/sec/android/app/billing/helper/UPHelper;

    .line 114
    :cond_0
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->upHelper:Lcom/sec/android/app/billing/helper/UPHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMessage(ILjava/lang/String;)Landroid/os/Message;
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 476
    const-string v2, "UPHelper"

    const-string v3, "[VERSION:20104]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v2, "UPHelper"

    const-string/jumbo v3, "toJSONString"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 480
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string v2, "RESPONSE_MESSAGE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 484
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 485
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 486
    return-object v1
.end method

.method private requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "jsonData"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 387
    const-string v1, "UPHelper"

    const-string v2, "[VERSION:20104]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v1, "UPHelper"

    const-string/jumbo v2, "requestBillingService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activity = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 392
    .local v9, "packageName":Ljava/lang/String;
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packageName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 395
    .local v10, "requestData":Landroid/os/Bundle;
    const-string v1, "PACKAGE_NAME"

    invoke-virtual {v10, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "REQUEST_CODE"

    move/from16 v0, p2

    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v1, "REQUEST_ACTION"

    move-object/from16 v0, p3

    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "REQUEST_DATA"

    move-object/from16 v0, p4

    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz v1, :cond_6

    .line 401
    const-string v1, "UPHelper"

    const-string v2, "iBillingService not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :try_start_0
    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    const/16 v2, 0x4e88

    const-string v3, ""

    invoke-interface {v1, v2, v10, v3}, Lcom/sec/android/app/billing/service/IBillingService;->requestBilling(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 406
    .local v11, "responseBundle":Landroid/os/Bundle;
    if-eqz v11, :cond_5

    .line 407
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responseBundle not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 410
    .local v12, "responseCode":I
    const-string v1, "RESPONSE_MESSAGE"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 411
    .local v13, "responseMessage":Ljava/lang/String;
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", responseMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2

    .line 414
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responseCode AIDL_RESULT_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v1, "BILLING_INTENT_EXIST"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responseBundle exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v1, "BILLING_INTENT"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .line 420
    .local v14, "responsePendingIntent":Landroid/app/PendingIntent;
    if-eqz v14, :cond_1

    .line 421
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responsePendingIntent not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 423
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v1, "PACKAGE_NAME"

    invoke-virtual {v4, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v1, "REQUEST_CODE"

    move/from16 v0, p2

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    invoke-virtual {v14}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v1, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 472
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v11    # "responseBundle":Landroid/os/Bundle;
    .end local v12    # "responseCode":I
    .end local v13    # "responseMessage":Ljava/lang/String;
    .end local v14    # "responsePendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 429
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v11    # "responseBundle":Landroid/os/Bundle;
    .restart local v12    # "responseCode":I
    .restart local v13    # "responseMessage":Ljava/lang/String;
    .restart local v14    # "responsePendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v8

    .line 430
    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    :try_start_2
    invoke-virtual {v8}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 431
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SendIntentException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v1, 0x3

    invoke-virtual {v8}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 433
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AIDL_RESULT_ERROR / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 460
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v11    # "responseBundle":Landroid/os/Bundle;
    .end local v12    # "responseCode":I
    .end local v13    # "responseMessage":Ljava/lang/String;
    .end local v14    # "responsePendingIntent":Landroid/app/PendingIntent;
    :catch_1
    move-exception v8

    .line 461
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 462
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemoteException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v1, 0x3

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AIDL_RESULT_ERROR / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 436
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v11    # "responseBundle":Landroid/os/Bundle;
    .restart local v12    # "responseCode":I
    .restart local v13    # "responseMessage":Ljava/lang/String;
    .restart local v14    # "responsePendingIntent":Landroid/app/PendingIntent;
    :cond_1
    :try_start_3
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responsePendingIntent null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, 0x3

    const-string/jumbo v2, "responsePendingIntent null"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    const-string v1, "UPHelper"

    const-string v2, "AIDL_RESULT_ERROR / responsePendingIntent null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 441
    .end local v14    # "responsePendingIntent":Landroid/app/PendingIntent;
    :cond_2
    const/4 v1, 0x2

    if-ne v12, v1, :cond_3

    .line 442
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responseCode AIDL_RESULT_FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v1, 0x2

    invoke-direct {p0, v1, v13}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AIDL_RESULT_FAIL / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 445
    :cond_3
    const/4 v1, 0x3

    if-ne v12, v1, :cond_4

    .line 446
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responseCode AIDL_RESULT_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v1, 0x3

    invoke-direct {p0, v1, v13}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AIDL_RESULT_ERROR / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 450
    :cond_4
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responseCode default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0, v12, v13}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 456
    .end local v12    # "responseCode":I
    .end local v13    # "responseMessage":Ljava/lang/String;
    :cond_5
    const-string v1, "UPHelper"

    const-string/jumbo v2, "responseBundle null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v1, 0x3

    const-string/jumbo v2, "responseBundle null"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    const-string v1, "UPHelper"

    const-string v2, "AIDL_RESULT_ERROR / responseBundle null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 468
    .end local v11    # "responseBundle":Landroid/os/Bundle;
    :cond_6
    const-string v1, "UPHelper"

    const-string v2, "iBillingService null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v1, 0x3

    const-string v2, "iBillingService null"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    const-string v1, "UPHelper"

    const-string v2, "AIDL_RESULT_ERROR / iBillingService null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "jsonData"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 330
    const-string v1, "UPHelper"

    const-string v2, "[VERSION:20104]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, "UPHelper"

    const-string/jumbo v2, "startSetupRetry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setup = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Lcom/sec/android/app/billing/helper/UPHelper$2;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/billing/helper/UPHelper$2;-><init>(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    sput-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 350
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.billing.action.BILLING"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v10, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v10, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 353
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v11, :cond_0

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    .line 354
    :cond_0
    const-string v1, "UPHelper"

    const-string/jumbo v2, "resolveInfo.serviceInfo null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x3

    const-string v2, "Resolve failed"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    const-string v1, "UPHelper"

    const-string v2, "AIDL_RESULT_ERROR / Resolve failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return-void

    .line 360
    :cond_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v8, "componentName":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "intent":Landroid/content/Intent;
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 362
    .restart local v10    # "intent":Landroid/content/Intent;
    invoke-virtual {v10, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 365
    :try_start_0
    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    const-string v1, "UPHelper"

    const-string v2, "queryIntentServices not empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v10, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v9

    .line 373
    .local v9, "e":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 374
    const-string v1, "UPHelper"

    const-string v2, "SecurityException: bind SecurityException error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/16 v1, 0xb

    invoke-virtual {v9}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UP_CLIENT_FAIL / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    .end local v9    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    const-string v1, "UPHelper"

    const-string v2, "Exception: queryIntentServices empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "queryIntentServices empty error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    :catch_1
    move-exception v9

    .line 378
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    const-string v1, "UPHelper"

    const-string v2, "Exception: exception error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v1, 0xb

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    const-string v1, "UPHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UP_CLIENT_FAIL / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public checkSamsungBilling()I
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 119
    const-string v5, "UPHelper"

    const-string v6, "[VERSION:20104]"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v5, "UPHelper"

    const-string v6, "checkSamsungBilling"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    sget-object v5, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.billing"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "signature":Ljava/lang/String;
    sget-object v5, Lcom/sec/android/app/billing/helper/UPHelper;->validation:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 125
    const-string v3, "UPHelper"

    const-string v4, "Samsung Billing invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "signature":Ljava/lang/String;
    :goto_0
    return v2

    .line 127
    .restart local v1    # "signature":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.billing"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 128
    sget-object v2, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.android.app.billing"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 129
    :cond_1
    const-string v2, "UPHelper"

    const-string v3, "Samsung Billing disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    const-string v2, "UPHelper"

    const-string v4, "Samsung Billing OK"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 133
    goto :goto_0

    .line 135
    .end local v1    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const-string v2, "UPHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v2, "UPHelper"

    const-string v3, "Samsung Billing uninstalled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v0, "UPHelper"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-boolean v0, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "UPHelper"

    const-string/jumbo v1, "setup true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "UPHelper"

    const-string/jumbo v1, "serviceConnection and context not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 222
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    .line 224
    :cond_1
    sput-object v2, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    .line 225
    sput-object v2, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 226
    return-void
.end method

.method public requestBilling(Landroid/app/Activity;IILjava/lang/String;Lcom/sec/android/app/billing/helper/CreditCardData;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apiVersion"    # I
    .param p3, "requestCode"    # I
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "creditCardData"    # Lcom/sec/android/app/billing/helper/CreditCardData;
    .param p6, "etc"    # Ljava/lang/String;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 570
    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v0, "UPHelper"

    const-string v1, "deprecated requestBilling Credit Card"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 572
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/CreditCardData;Landroid/os/Handler;)V

    .line 573
    return-void
.end method

.method public requestBilling(Landroid/app/Activity;IILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apiVersion"    # I
    .param p3, "requestCode"    # I
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "paymentData"    # Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .param p6, "etc"    # Ljava/lang/String;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v0, "UPHelper"

    const-string v1, "deprecated requestBilling Payment"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 565
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Landroid/os/Handler;)V

    .line 566
    return-void
.end method

.method public requestBilling(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apiVersion"    # I
    .param p3, "requestCode"    # I
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "jsonData"    # Ljava/lang/String;
    .param p6, "etc"    # Ljava/lang/String;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "UPHelper"

    const-string v1, "deprecated requestBilling String"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 558
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 559
    return-void
.end method

.method public requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/CreditCardData;Landroid/os/Handler;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "creditCardData"    # Lcom/sec/android/app/billing/helper/CreditCardData;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v0, "UPHelper"

    const-string/jumbo v1, "requestBilling Credit Card"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v0, "UPHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-nez p5, :cond_0

    .line 299
    const-string v0, "UPHelper"

    const-string v1, "Exception: Handler null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "requestBilling Handler null error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    const-string v0, "CREDIT_CARD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    .line 304
    const-string v0, "UPHelper"

    const-string v1, "activity not null, action valid, CreditCardData not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {p4}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "jsonData":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :cond_1
    const-string v0, "UPHelper"

    const-string v1, "jsonData null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x3

    const-string v1, "jsonData null or empty"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    const-string v0, "UPHelper"

    const-string v1, "AIDL_RESULT_ERROR / jsonData null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v4    # "jsonData":Ljava/lang/String;
    :goto_0
    return-void

    .line 313
    .restart local v4    # "jsonData":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz v0, :cond_3

    .line 314
    const-string v0, "UPHelper"

    const-string v1, "iBillingService not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 315
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 317
    :cond_3
    const-string v0, "UPHelper"

    const-string v1, "iBillingService null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 322
    .end local v4    # "jsonData":Ljava/lang/String;
    :cond_4
    const-string v0, "UPHelper"

    const-string v1, "activity null, (or) action invalid, (or) CreditCardData empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v0, 0xb

    const-string v1, "activity, action, CreditCardData error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    const-string v0, "UPHelper"

    const-string v1, "UP_CLIENT_FAIL / activity, action, CreditCardData error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Landroid/os/Handler;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "unifiedPaymentData"    # Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v0, "UPHelper"

    const-string/jumbo v1, "requestBilling Payment"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "UPHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-nez p5, :cond_0

    .line 263
    const-string v0, "UPHelper"

    const-string v1, "Exception: Handler null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "requestBilling Handler null error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    const-string v0, "PAYMENT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    .line 268
    const-string v0, "UPHelper"

    const-string v1, "activity not null, action valid, UnifiedPaymentData not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {p4}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "jsonData":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    :cond_1
    const-string v0, "UPHelper"

    const-string v1, "jsonData null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x3

    const-string v1, "jsonData null or empty"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    const-string v0, "UPHelper"

    const-string v1, "AIDL_RESULT_ERROR / jsonData null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v4    # "jsonData":Ljava/lang/String;
    :goto_0
    return-void

    .line 277
    .restart local v4    # "jsonData":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz v0, :cond_3

    .line 278
    const-string v0, "UPHelper"

    const-string v1, "iBillingService not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 281
    :cond_3
    const-string v0, "UPHelper"

    const-string v1, "iBillingService null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 286
    .end local v4    # "jsonData":Ljava/lang/String;
    :cond_4
    const-string v0, "UPHelper"

    const-string v1, "activity null, (or) action invalid, (or) UnifiedPaymentData empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x2

    const-string v1, "activity, action, UnifiedPaymentData error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    const-string v0, "UPHelper"

    const-string v1, "UP_CLIENT_FAIL / activity, action, UnifiedPaymentData error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "jsonData"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "UPHelper"

    const-string/jumbo v1, "requestBilling String"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "UPHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-nez p5, :cond_0

    .line 235
    const-string v0, "UPHelper"

    const-string v1, "Exception: Handler null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "requestBilling Handler null error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    const-string v0, "PAYMENT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CREDIT_CARD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    const-string v0, "UPHelper"

    const-string v1, "activity not null, action valid, jsonData not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz v0, :cond_2

    .line 243
    const-string v0, "UPHelper"

    const-string v1, "iBillingService not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 254
    :goto_0
    return-void

    .line 246
    :cond_2
    const-string v0, "UPHelper"

    const-string v1, "iBillingService null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 250
    :cond_3
    const-string v0, "UPHelper"

    const-string v1, "activity null, (or) action invalid, (or) jsonData empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x2

    const-string v1, "activity, action, jsonData error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    const-string v0, "UPHelper"

    const-string v1, "AIDL_RESULT_FAIL / activity, action, jsonData error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSetup(Landroid/os/Handler;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0xb

    .line 145
    const-string v4, "UPHelper"

    const-string v5, "[VERSION:20104]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v4, "UPHelper"

    const-string/jumbo v5, "startSetup"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-nez p1, :cond_0

    .line 149
    const-string v4, "UPHelper"

    const-string v5, "Exception: Handler null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "startSetup Handler null error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_0
    sget-object v4, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz v4, :cond_1

    .line 153
    const-string v4, "UPHelper"

    const-string v5, "iBillingService exists already"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v4, Lcom/sec/android/app/billing/helper/UPHelper$1;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/app/billing/helper/UPHelper$1;-><init>(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/os/Handler;)V

    sput-object v4, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 174
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.billing.action.BILLING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 177
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_3

    .line 178
    :cond_2
    const-string v4, "UPHelper"

    const-string/jumbo v5, "resolveInfo.serviceInfo null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v4, "Resolve failed"

    invoke-direct {p0, v7, v4}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    const-string v4, "UPHelper"

    const-string v5, "UP_CLIENT_FAIL / Resolve failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 186
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 189
    :try_start_0
    sget-object v4, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 190
    const-string v4, "UPHelper"

    const-string v5, "queryIntentServices not empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v4, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 198
    const-string v4, "UPHelper"

    const-string v5, "SecurityException: bind SecurityException error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    const-string v4, "UPHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UP_CLIENT_FAIL / "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_4
    :try_start_1
    const-string v4, "UPHelper"

    const-string v5, "Exception: queryIntentServices empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "queryIntentServices empty error"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const-string v4, "UPHelper"

    const-string v5, "Exception: bind error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    const-string v4, "UPHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UP_CLIENT_FAIL / "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
