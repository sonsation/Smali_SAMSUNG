.class public final Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;
.super Ljava/lang/Object;
.source "SVirtualScreen.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final VIRTUALSCREEN_BASIC_FEATURE:I = 0x1

.field static final VIRTUALSCREEN_SDK_VERSION_CODE:I = 0x2

.field static final VIRTUALSCREEN_SDK_VERSION_NAME:Ljava/lang/String; = "1.7.1"

.field private static enableQueried:Z

.field private static isVirtualScreenEnabled:Z


# instance fields
.field private mVirtualScreenReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-class v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->TAG:Ljava/lang/String;

    .line 44
    sput-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->enableQueried:Z

    .line 45
    sput-boolean v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isVirtualScreenEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;

    invoke-direct {v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->mVirtualScreenReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;

    .line 57
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->mVirtualScreenReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;

    const-string v2, "getApplication"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 60
    iget-object v1, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->mVirtualScreenReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;

    const-string v2, "getSystemContext"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->initVirtualScreenFeature()V

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initVirtualScreenFeature()V
    .locals 7

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "context":Landroid/content/Context;
    :try_start_0
    const-string v5, "android.app.ActivityThread"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 125
    .local v1, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 126
    .local v2, "activityThreadObj":Landroid/app/ActivityThread;
    iget-object v5, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->mVirtualScreenReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;

    const-string v5, "getApplication()"

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->mVirtualScreenReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;

    const-string v6, "getApplication()"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v6, v2, v5}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/Context;

    move-object v3, v0

    .line 129
    :cond_0
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->mVirtualScreenReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;

    const-string v5, "getSystemContext()"

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    iget-object v5, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->mVirtualScreenReflector:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;

    const-string v6, "getSystemContext()"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v6, v2, v5}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/Context;

    move-object v3, v0

    .line 133
    :cond_1
    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 135
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2

    .line 136
    const-string v5, "com.samsung.feature.virtualscreen"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isVirtualScreenEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "activityThreadObj":Landroid/app/ActivityThread;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x2

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "1.7.1"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->isSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 77
    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isVirtualScreenEnabled:Z

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v1, "The device is not supported."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 81
    :cond_1
    return-void
.end method

.method public isFeatureEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 91
    packed-switch p1, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isVirtualScreenEnabled:Z

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
