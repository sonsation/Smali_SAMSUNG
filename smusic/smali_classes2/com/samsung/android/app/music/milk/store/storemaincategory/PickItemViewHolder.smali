.class public Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PickItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PICK_IMAGE_RATIO:F = 0.325f

.field private static final TAG:Ljava/lang/String; = "TopChartItemViewHolder"


# instance fields
.field mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

.field mDescription:Landroid/widget/TextView;

.field mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field mItemContainer:Landroid/widget/LinearLayout;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    const v0, 0x7f1200b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 46
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f120173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mDescription:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f120423

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mItemContainer:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const v1, 0x3ea66666    # 0.325f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setDimensRatio(F)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    const v1, 0x7f040172

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public changeContents(ILcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    .param p3, "imageLoadingListener"    # Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;

    .prologue
    .line 57
    const-string v0, "TopChartItemViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeContents : pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0200db

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setImage(Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/storemaincategory/PickItemViewHolder;->mData:Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 72
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentId()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "931"

    const-string v3, "9312"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x7f120423
        :pswitch_0
    .end packed-switch
.end method
