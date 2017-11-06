.class public Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.source "PickDetailArticleHeaderViewHolder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PickDetailArticleHeaderViewHolder"


# instance fields
.field private mEditorName:Landroid/widget/TextView;

.field private mPlayAll:Landroid/widget/TextView;

.field private mReleaseDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f120439

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->mPlayAll:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f12043a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->mReleaseDate:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f12043b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->mEditorName:Landroid/widget/TextView;

    .line 26
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const v2, 0x7f040179

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;
    return-object v0
.end method


# virtual methods
.method public getEditorName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->mEditorName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPlayAll()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->mPlayAll:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReleaseDate()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleHeaderViewHolder;->mReleaseDate:Landroid/widget/TextView;

    return-object v0
.end method
