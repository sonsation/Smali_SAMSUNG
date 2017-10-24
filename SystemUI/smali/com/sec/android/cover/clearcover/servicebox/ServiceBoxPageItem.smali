.class public Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;
.super Ljava/lang/Object;
.source "ServiceBoxPageItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsExpanded:Z

.field private final mKey:Ljava/lang/String;

.field private final mPageResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "pageResId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "expanded"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ServiceBoxPageItem: pageResId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " expanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    if-gtz p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Layout id cannot by  <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    if-nez p2, :cond_1

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput p1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mPageResId:I

    .line 27
    iput-object p2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mKey:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mIsExpanded:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPage(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    iget v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mPageResId:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    .line 34
    .local v0, "page":Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->setExpandState(Z)V

    .line 35
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->setPageKey(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mIsExpanded:Z

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServiceBoxPageItem [mPageResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mPageResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
