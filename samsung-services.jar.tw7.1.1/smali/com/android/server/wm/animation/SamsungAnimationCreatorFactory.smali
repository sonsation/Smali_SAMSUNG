.class public Lcom/android/server/wm/animation/SamsungAnimationCreatorFactory;
.super Ljava/lang/Object;
.source "SamsungAnimationCreatorFactory.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.server.wm.animation."

.field private static final SUFFIX:Ljava/lang/String; = "SamsungAnimationCreator"

.field private static final TAG:Ljava/lang/String; = "SamsungAnimationCreatorFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSamsungAnimationCreator(Ljava/lang/String;)Lcom/android/server/wm/animation/SamsungAnimationCreator;
    .locals 10
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 14
    const-string v6, "SamsungAnimationCreatorFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSamsungAnimationCreator type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 19
    :cond_0
    const-string p0, "LowEnd"

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 27
    .local v3, "creator":Lcom/android/server/wm/animation/SamsungAnimationCreator;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.server.wm.animation."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SamsungAnimationCreator"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 28
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 29
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 30
    .local v5, "object":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "creator":Lcom/android/server/wm/animation/SamsungAnimationCreator;
    .end local v5    # "object":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 20
    :cond_2
    const-string v6, "None"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 21
    return-object v9

    .line 31
    .restart local v3    # "creator":Lcom/android/server/wm/animation/SamsungAnimationCreator;
    :catch_0
    move-exception v4

    .line 32
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "SamsungAnimationCreatorFactory"

    const-string v7, "getSamsungAnimationCreator"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
