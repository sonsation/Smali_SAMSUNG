.class Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;
.super Lcom/samsung/audio/Smat;
.source "RingtoneRecommenderSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingtoneRecommender"
.end annotation


# static fields
.field private static sGetInfoMethod:Ljava/lang/reflect/Method;

.field private static sGetStatMethod:Ljava/lang/reflect/Method;

.field private static sIsExtractableMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/audio/Smat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()J
    .locals 6

    .prologue
    .line 102
    const-wide/16 v2, 0x0

    .line 104
    .local v2, "offset":J
    :try_start_0
    invoke-super {p0}, Lcom/samsung/audio/Smat;->getInfo()J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 115
    :goto_0
    return-wide v2

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetInfoMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 108
    const-class v4, Lcom/samsung/audio/Smat;

    const-string v5, "get_info"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetInfoMethod:Ljava/lang/reflect/Method;

    .line 110
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetInfoMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v2

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public getState()I
    .locals 6

    .prologue
    .line 86
    :try_start_0
    invoke-super {p0}, Lcom/samsung/audio/Smat;->getState()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 97
    .local v2, "status":I
    :goto_0
    return v2

    .line 87
    .end local v2    # "status":I
    :catch_0
    move-exception v1

    .line 89
    .local v1, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    sget-object v3, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetStatMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 90
    const-class v4, Lcom/samsung/audio/Smat;

    const-string v5, "get_stat"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetStatMethod:Ljava/lang/reflect/Method;

    .line 92
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetStatMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .restart local v2    # "status":I
    goto :goto_0

    .line 93
    .end local v2    # "status":I
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const/4 v2, -0x3

    .restart local v2    # "status":I
    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v2    # "status":I
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public isExtractable()Z
    .locals 5

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "isExtractable":Z
    :try_start_0
    invoke-super {p0}, Lcom/samsung/audio/Smat;->isExtractable()Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 134
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    sget-object v2, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sIsExtractableMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 126
    const-class v3, Lcom/samsung/audio/Smat;

    const-string v4, "is_extractable"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    .line 127
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sIsExtractableMethod:Ljava/lang/reflect/Method;

    .line 129
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetInfoMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method
