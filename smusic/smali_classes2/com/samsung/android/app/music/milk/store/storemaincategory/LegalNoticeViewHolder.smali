.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;
.super Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
.source "LegalNoticeViewHolder.java"


# instance fields
.field private final mLegalNoticeView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f120427

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;->mLegalNoticeView:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 17
    const v1, 0x7f04016b

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 18
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public onBindView(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->STORE:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/LegalNoticeViewHolder;->mLegalNoticeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;->buildNotice(Landroid/widget/TextView;)V

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    return-void
.end method

.method public onUnBindView()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
