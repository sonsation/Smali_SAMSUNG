.class public Lcom/facebook/appevents/internal/InAppPurchaseEventManager;
.super Ljava/lang/Object;
.source "InAppPurchaseEventManager.java"


# static fields
.field private static final DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final GET_INTERFACE_METHOD:Ljava/lang/String; = "iap_get_interface"

.field private static final GET_SKU_DETAILS_METHOD:Ljava/lang/String; = "iap_get_sku_details"

.field private static final IN_APP_BILLING_SERVICE:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService"

.field private static final IN_APP_BILLING_SERVICE_STUB:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final ITEM_ID_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final TAG:Ljava/lang/String;

.field private static final classMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    .line 40
    const-class v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPurchaseDetails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "inAppBillingObj"    # Ljava/lang/Object;

    .prologue
    .line 90
    if-eqz p2, :cond_0

    const-string v13, ""

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 91
    :cond_0
    const-string v2, ""

    .line 146
    :goto_0
    return-object v2

    .line 94
    :cond_1
    :try_start_0
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    const-string v14, "iap_get_sku_details"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 95
    .local v5, "getSkuDetailsMethod":Ljava/lang/reflect/Method;
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    const-string v14, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 96
    .local v6, "iapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_2

    if-nez v6, :cond_3

    .line 97
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const-string v14, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 98
    const/4 v13, 0x4

    new-array v8, v13, [Ljava/lang/Class;

    .line 99
    .local v8, "paramTypes":[Ljava/lang/Class;
    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v8, v13

    .line 100
    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v8, v13

    .line 101
    const/4 v13, 0x2

    const-class v14, Ljava/lang/String;

    aput-object v14, v8, v13

    .line 102
    const/4 v13, 0x3

    const-class v14, Landroid/os/Bundle;

    aput-object v14, v8, v13

    .line 103
    const-string v13, "getSkuDetails"

    invoke-virtual {v6, v13, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 104
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    const-string v14, "iap_get_sku_details"

    invoke-virtual {v13, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    const-string v14, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v8    # "paramTypes":[Ljava/lang/Class;
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v12, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v9, "querySkus":Landroid/os/Bundle;
    const-string v13, "ITEM_ID_LIST"

    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 112
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 113
    .local v7, "localObj":Ljava/lang/Object;
    const/4 v13, 0x4

    new-array v1, v13, [Ljava/lang/Object;

    .line 114
    .local v1, "args":[Ljava/lang/Object;
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v13

    .line 115
    const/4 v13, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v13

    .line 116
    const/4 v13, 0x2

    const-string v14, "inapp"

    aput-object v14, v1, v13

    .line 117
    const/4 v13, 0x3

    aput-object v9, v1, v13

    .line 118
    invoke-virtual {v5, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 120
    .local v11, "skuDetails":Landroid/os/Bundle;
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 121
    .local v10, "response":I
    if-nez v10, :cond_5

    .line 122
    const-string v13, "DETAILS_LIST"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 123
    .local v3, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    const-string v2, ""

    .line 124
    .local v2, "detail":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 123
    .end local v2    # "detail":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v2, v13

    goto :goto_1

    .line 127
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v3    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "getSkuDetailsMethod":Ljava/lang/reflect/Method;
    .end local v6    # "iapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "localObj":Ljava/lang/Object;
    .end local v9    # "querySkus":Landroid/os/Bundle;
    .end local v10    # "response":I
    .end local v11    # "skuDetails":Landroid/os/Bundle;
    .end local v12    # "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 128
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v14, "com.android.vending.billing.IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to the project, and import the IInAppBillingService.aidl file into this package"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_5
    :goto_2
    const-string v2, ""

    goto/16 :goto_0

    .line 135
    :catch_1
    move-exception v4

    .line 136
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v14, "com.android.vending.billing.IInAppBillingService.getSkuDetails method is not available"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 138
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 139
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v14, "Invocation target exception in com.android.vending.billing.IInAppBillingService.getSkuDetails"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 143
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v4

    .line 144
    .local v4, "e":Ljava/lang/IllegalAccessException;
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v14, "Illegal access to method com.android.vending.billing.IInAppBillingService.getSkuDetails"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getServiceInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 53
    :try_start_0
    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    const-string v7, "iap_get_interface"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 54
    .local v2, "getInterfaceMethod":Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 56
    .local v3, "iapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 57
    .local v4, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v4, v6

    .line 58
    const-string v6, "asInterface"

    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 59
    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    const-string v7, "iap_get_interface"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v3    # "iapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    :cond_0
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    .line 63
    .local v0, "args":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v0, v6

    .line 64
    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v7, "In-app billing service connected"

    invoke-static {v6, v7}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 86
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "getInterfaceMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v7, "com.android.vending.billing.IInAppBillingService$Stub is not available, please add com.android.vending.billing.IInAppBillingService to the project."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v7, "com.android.vending.billing.IInAppBillingService$Stub.asInterface method not found"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v7, "Illegal access to method com.android.vending.billing.IInAppBillingService$Stub.asInterface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v7, "Invocation target exception in com.android.vending.billing.IInAppBillingService$Stub.asInterface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
