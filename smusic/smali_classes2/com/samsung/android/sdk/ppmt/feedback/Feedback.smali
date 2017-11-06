.class public Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDts:Lorg/json/JSONArray;

.field private mFbids:Lorg/json/JSONArray;

.field private mFvs:Lorg/json/JSONArray;

.field private mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "fbids"    # Lorg/json/JSONArray;
    .param p2, "fvs"    # Lorg/json/JSONArray;
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "dts"    # Lorg/json/JSONArray;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->mFbids:Lorg/json/JSONArray;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->mFvs:Lorg/json/JSONArray;

    .line 23
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->mState:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->mDts:Lorg/json/JSONArray;

    .line 25
    return-void
.end method

.method public static getFeedback(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 28
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 29
    :cond_0
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to get feedback. invalid params"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-object v5

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 34
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_2

    .line 35
    sget-object v5, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to get feedback. dbHandler null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw v5

    .line 38
    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isFeedbackExist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 39
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] There is no data in DB. Maybe card is expired after 7 days"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "status":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackFbids(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 45
    .local v1, "fbid":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackFvs(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 46
    .local v2, "fv":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackTimes(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 47
    .local v4, "ts":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 49
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-nez v4, :cond_5

    .line 50
    :cond_4
    sget-object v5, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to get feedback. fail to read feedback db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v5, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw v5

    .line 54
    :cond_5
    new-instance v5, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getDts()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->mDts:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getFbids()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->mFbids:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getFvs()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->mFvs:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->mState:Ljava/lang/String;

    return-object v0
.end method
