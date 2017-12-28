.class Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;
.super Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;
.source "SVirtualScreenManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector$LaunchParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_REFLECTION:Z = false

.field private static final MULTISCREEN_VER_1:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mVersionCode:I

.field private static sKlassVirtualScreenManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mInitialized:Z

.field private mInstanceVirtualScreenManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    .line 54
    invoke-static {}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->loadKlass()V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenReflector;-><init>()V

    .line 51
    iput-boolean v4, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInitialized:Z

    .line 111
    new-instance v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;-><init>()V

    .line 112
    .local v1, "virtualScreen":Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isFeatureEnabled(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    :goto_0
    return-void

    .line 116
    :cond_0
    if-nez p1, :cond_1

    .line 117
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "context is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 127
    .local v2, "virtualScreenManagerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    .line 129
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInitialized:Z

    .line 130
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "completely initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 131
    .end local v2    # "virtualScreenManagerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "NoSuchMethodException !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "InstantiationException !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "IllegalAccessException !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v4, "IllegalArgumentException !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvocationTargetException ! cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    return v0
.end method

.method private static checkVersion()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method private static getFrameworkVersionCode()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, -0x1

    return v0
.end method

.method private static getFrameworkVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private static getRequiredMinimumSdkVersionCode()I
    .locals 1

    .prologue
    .line 411
    const/4 v0, -0x1

    return v0
.end method

.method private static getRequiredMinimumSdkVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method static loadKlass()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 153
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 156
    :try_start_0
    const-string v3, "com.samsung.android.multiscreen.virtualscreen.VirtualScreenManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    .line 163
    const/4 v3, 0x1

    sput v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    .line 164
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVersionCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Support from N OS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    :goto_0
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v5, "startActivity"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/content/Intent;

    aput-object v7, v6, v9

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 188
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v6, "bindVirtualScreen"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 191
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v6, "unBindVirtualScreen"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 194
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v5, "setOffset"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v10

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 201
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v6, "getOffset"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 204
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v6, "isMoving"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 207
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v5, "getDisplayId"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 213
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v5, "updateVirtualScreen"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 219
    const-class v5, Landroid/content/Intent;

    const-string v6, "getVirtualScreenParams"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v5, v6, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 221
    const-class v3, Landroid/content/Intent;

    const-string v5, "getLaunchParams"

    check-cast v4, [Ljava/lang/Class;

    invoke-static {v3, v5, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 224
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    const-string v4, "getDisplayIdByPackage"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 230
    :try_start_1
    const-string v3, "com.samsung.android.multiscreen.MultiScreenLaunchParams"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 231
    .local v2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setDisplayId"

    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 233
    const-string v3, "setFlags"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 235
    const-string v3, "setBaseDisplayId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 237
    const-string v3, "setLaunchParams"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 252
    .end local v2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkVersion()V

    .line 253
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_2
    return-void

    .line 165
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v1

    .line 167
    .restart local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v3, "com.samsung.android.multidisplay.virtualscreen.VirtualScreenManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    .line 174
    sget-object v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVersionCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Support until M OS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 239
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method bindVirtualScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 336
    const-string v0, "bindVirtualScreen()"

    .line 337
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 340
    :cond_0
    return v1
.end method

.method getDisplayId(Landroid/graphics/Rect;I)I
    .locals 6
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    .line 328
    const-string v0, "getDisplayId(Rect,int)"

    .line 329
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 332
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getDisplayIdByPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string v0, "getDisplayIdByPackage(String)"

    .line 369
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 372
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getOffset()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 268
    const-string v0, "getOffset()"

    .line 269
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    sget-object v1, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 272
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method initialized()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInitialized:Z

    return v0
.end method

.method isMoving()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 352
    const-string v0, "isMoving()"

    .line 353
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 356
    :cond_0
    return v1
.end method

.method setOffset(IIZ)Z
    .locals 6
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 260
    const-string v0, "setOffset(int,int,boolean)"

    .line 261
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 264
    :cond_0
    return v1
.end method

.method startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "params"    # Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    .prologue
    const/4 v10, 0x1

    const/4 v4, -0x1

    const/4 v9, 0x0

    .line 276
    const-string v2, "startActivity(Intent,Bundle)"

    .line 278
    .local v2, "methodNameWithParam":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 279
    const/4 v3, 0x0

    .line 280
    .local v3, "ob":Ljava/lang/Object;
    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mVersionCode:I

    if-ge v5, v10, :cond_4

    .line 282
    :try_start_0
    const-class v5, Landroid/content/Intent;

    const-string v6, "getVirtualScreenParams()"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    const-class v5, Landroid/content/Intent;

    const-string v6, "getVirtualScreenParams()"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, p1, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 284
    iget-object v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_3

    .line 285
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mBounds"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iget-object v6, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mFlags"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iget v6, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 321
    .end local v3    # "ob":Ljava/lang/Object;
    :cond_1
    :goto_1
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 322
    sget-object v4, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v5, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    invoke-static {v4, v2, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 324
    :cond_2
    :goto_2
    return v4

    .line 286
    .restart local v3    # "ob":Ljava/lang/Object;
    :cond_3
    :try_start_1
    iget v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    if-le v5, v4, :cond_0

    .line 287
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mDisplayId"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iget v6, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 291
    .end local v3    # "ob":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v6, "startActivity() : NoSuchMethodException ! getVirtualScreenParams"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 293
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v6, "IllegalAccessException !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v3    # "ob":Ljava/lang/Object;
    :cond_4
    const-class v5, Landroid/content/Intent;

    const-string v6, "getLaunchParams()"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    const-class v5, Landroid/content/Intent;

    const-string v6, "getLaunchParams()"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, p1, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 300
    iget-object v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_7

    .line 301
    iget-object v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    iget v6, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->getDisplayId(Landroid/graphics/Rect;I)I

    move-result v0

    .line 302
    .local v0, "displayId":I
    if-gt v0, v4, :cond_5

    .line 303
    sget-object v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity() Can not startActivity in VirtualScreen displayId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayId(int)"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 307
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayId(int)"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v3, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v0    # "displayId":I
    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setFlags(int)"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 315
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setFlags(int)"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v3, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 309
    :cond_7
    iget v5, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    if-le v5, v4, :cond_6

    .line 310
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayId(int)"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 311
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayId(int)"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->displayId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v3, v7}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 295
    .end local v3    # "ob":Ljava/lang/Object;
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method unBindVirtualScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 344
    const-string v0, "unBindVirtualScreen()"

    .line 345
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 348
    :cond_0
    return v1
.end method

.method updateMultiScreenLaunchParams(Landroid/content/Intent;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)Landroid/content/Intent;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "params"    # Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 377
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "ob":Ljava/lang/Object;
    const-class v2, Landroid/content/Intent;

    const-string v3, "getLaunchParams()"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    const-class v2, Landroid/content/Intent;

    const-string v3, "getLaunchParams()"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, p1, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 381
    iget v0, p2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->baseDisplayId:I

    .line 382
    .local v0, "baseDisplayId":I
    const/4 v2, -0x1

    if-gt v0, v2, :cond_1

    .line 383
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMultiScreenLaunchParams() Can not updateMultiScreenParams baseDisplayId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 p1, 0x0

    .line 398
    .end local v0    # "baseDisplayId":I
    .end local v1    # "ob":Ljava/lang/Object;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object p1

    .line 386
    .restart local v0    # "baseDisplayId":I
    .restart local v1    # "ob":Ljava/lang/Object;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setBaseDisplayId(int)"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setBaseDisplayId(int)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v1, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setFlags(int)"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setFlags(int)"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v1, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .end local v0    # "baseDisplayId":I
    .end local v1    # "ob":Ljava/lang/Object;
    :cond_3
    const-class v2, Landroid/content/Intent;

    const-string v3, "setLaunchParams(Object)"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const-class v2, Landroid/content/Intent;

    const-string v3, "setLaunchParams(Object)"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v2, v3, p1, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method updateVirtualScreen(Landroid/graphics/Rect;I)Z
    .locals 6
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 360
    const-string v0, "updateVirtualScreen(Rect,int)"

    .line 361
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    sget-object v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->sKlassVirtualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->mInstanceVirtualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 364
    :cond_0
    return v1
.end method
