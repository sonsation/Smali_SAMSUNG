.class Lcom/android/launcher3/util/MinLimit;
.super Ljava/lang/Object;
.source "DvfsUtil.java"


# instance fields
.field private mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "index"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 134
    iget-object v1, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    .line 136
    .local v0, "supportedTable":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p4, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    aget v2, v0, p4

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 140
    .end local v0    # "supportedTable":[I
    :cond_0
    return-void
.end method


# virtual methods
.method boostUp(I)Z
    .locals 1
    .param p1, "timeOut"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/util/MinLimit;->mDvfsMin:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
