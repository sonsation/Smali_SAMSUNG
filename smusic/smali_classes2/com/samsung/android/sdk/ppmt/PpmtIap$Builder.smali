.class public Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
.super Ljava/lang/Object;
.source "PpmtIap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/PpmtIap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIapData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mTimestamp:J

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mIapData:Ljava/util/Map;

    .line 55
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/ppmt/PpmtIap;
    .locals 5

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mTimestamp:J

    .line 224
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp is empty. fill with system current millis. + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ppmt/PpmtIap;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mIapData:Ljava/util/Map;

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mTimestamp:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/PpmtIap;-><init>(Ljava/util/Map;JLcom/samsung/android/sdk/ppmt/PpmtIap$1;)V

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
    .locals 0
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;
    .param p4, "currency"    # Ljava/lang/String;
    .param p5, "paymentMethod"    # Ljava/lang/String;
    .param p6, "timestamp"    # J

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->setPid(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;

    .line 208
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->setProductName(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;

    .line 209
    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->setPrice(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;

    .line 210
    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->setCurrency(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;

    .line 211
    invoke-virtual {p0, p5}, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->setPaymentMethod(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;

    .line 212
    invoke-virtual {p0, p6, p7}, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->setTimestamp(J)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;

    .line 213
    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
    .locals 2
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currency is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-object p0

    .line 150
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->isValidBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currency is too long."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mIapData:Ljava/util/Map;

    const-string v1, "currency"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    if-nez p2, :cond_1

    .line 183
    const-string p2, ""

    .line 185
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-static {p2}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->isValidBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set data : value is too long."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-object p0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mIapData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPaymentMethod(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
    .locals 2
    .param p1, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paymentMethod is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-object p0

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->isValidBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paymentMethod is too long."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mIapData:Ljava/util/Map;

    const-string v1, "method"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPid(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "productId is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-object p0

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->isValidBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "productId length is too long."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mIapData:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPrice(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
    .locals 2
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "price is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-object p0

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->isValidBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "price length is too long."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mIapData:Ljava/util/Map;

    const-string v1, "ptCost"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setProductName(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
    .locals 2
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "productName is null."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-object p0

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtAbstractData;->isValidBoundary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "productName length is too long."

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mIapData:Ljava/util/Map;

    const-string v1, "ptName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTimestamp(J)Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtIap$Builder;->mTimestamp:J

    .line 167
    return-object p0
.end method
