.class public Lcom/samsung/android/app/music/milk/advertise/AdPolicy;
.super Ljava/lang/Object;
.source "AdPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdPolicy"


# instance fields
.field private currentIndex:I

.field private playPatten:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/advertise/AdPlayType;",
            ">;"
        }
    .end annotation
.end field

.field private playSleepMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "defaultPattern"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    .line 15
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playSleepMode:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->parsePattern(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playSleepMode:Z

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23
    :cond_0
    return-void
.end method

.method private static isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 27
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method


# virtual methods
.method public getNextType()Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    .locals 5

    .prologue
    .line 73
    const-string v2, "AdPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextType - currentIndex before : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 75
    .local v1, "size":I
    const-string v2, "AdPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextType - patten size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    .line 77
    iget v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    if-lt v2, v1, :cond_0

    .line 78
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    .line 80
    :cond_0
    const-string v2, "AdPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextType - currentIndex after : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    .line 82
    .local v0, "nextPlay":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    const-string v2, "AdPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextType - nextPlay type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method public isPlayerSleep()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playSleepMode:Z

    return v0
.end method

.method public parsePattern(Ljava/lang/String;)V
    .locals 9
    .param p1, "adIntervalPattern"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 38
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 39
    iput v5, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    .line 41
    :try_start_0
    const-string v6, "0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 42
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    sget-object v6, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playSleepMode:Z

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v6, "-"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "pattens":[Ljava/lang/String;
    array-length v6, v3

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v4, v3, v5

    .line 49
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->isInteger(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "adInterval":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 52
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    sget-object v8, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55
    .end local v0    # "adInterval":I
    .end local v2    # "i":I
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->create(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58
    .end local v3    # "pattens":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "AdPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parsePattern"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    sget-object v6, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetIndex()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPolicy{currentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playPatten="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playPatten:Ljava/util/List;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSleepMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->playSleepMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
