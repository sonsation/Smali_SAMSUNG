.class public Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;
.super Ljava/lang/Object;
.source "PpmtData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/PpmtData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->mMap:Ljava/util/HashMap;

    .line 46
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/ppmt/PpmtData;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/samsung/android/sdk/ppmt/PpmtData;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->mMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/PpmtData;-><init>(Ljava/util/HashMap;Lcom/samsung/android/sdk/ppmt/PpmtData$1;)V

    return-object v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 61
    const-string p2, ""

    .line 63
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->isValidBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtData;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value is too long."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-object p0

    .line 67
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
