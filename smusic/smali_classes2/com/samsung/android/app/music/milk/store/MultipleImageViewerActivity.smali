.class public Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MultipleImageViewerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultipleImageViewerActivity"


# instance fields
.field private adapter:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

.field protected mCancel:Landroid/view/View;

.field private mCurrentPosition:I

.field protected mIndexer:Landroid/widget/TextView;

.field private mTransparent:Landroid/graphics/drawable/Drawable;

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewPager:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mTransparent:Landroid/graphics/drawable/Drawable;

    .line 44
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f04014d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 57
    :cond_0
    const v1, 0x7f1203ea

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mViewPager:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    .line 58
    const v1, 0x7f12027b

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mCancel:Landroid/view/View;

    .line 59
    const v1, 0x7f1203eb

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mIndexer:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contentLists"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mUrls:Ljava/util/ArrayList;

    .line 62
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mUrls:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 63
    const-string v1, "MultipleImageViewerActivity"

    const-string v2, "onCreate : url is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mUrls:Ljava/util/ArrayList;

    .line 67
    :cond_1
    const-string v1, "MultipleImageViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : url size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mUrls:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->adapter:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mViewPager:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->adapter:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mViewPager:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mCancel:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mIndexer:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->onPageSelected(I)V

    .line 87
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "933"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mViewPager:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 94
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 142
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 98
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 102
    const-string v3, "MultipleImageViewerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageSelected : pos - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentPosition : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mCurrentPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mCurrentPosition:I

    if-le p1, v3, :cond_3

    .line 106
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "933"

    const-string v5, "9355"

    .line 107
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mCurrentPosition:I

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mViewPager:Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/widget/BaseViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "indexText":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mIndexer:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v1, 0x0

    .local v1, "nextView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    const/4 v2, 0x0

    .line 119
    .local v2, "preView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    if-nez p1, :cond_4

    .line 120
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->adapter:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->getView(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "nextView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    .line 128
    .restart local v1    # "nextView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    :goto_1
    if-eqz v1, :cond_1

    .line 129
    const-string v3, "MultipleImageViewerActivity"

    const-string v4, "[onPageSelected] nextView onDefaultScale"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->onDefaultScale()V

    .line 133
    :cond_1
    if-eqz v2, :cond_2

    .line 134
    const-string v3, "MultipleImageViewerActivity"

    const-string v4, "[onPageSelected] preView onDefaultScale"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->onDefaultScale()V

    .line 137
    :cond_2
    return-void

    .line 108
    .end local v0    # "indexText":Ljava/lang/String;
    .end local v1    # "nextView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    .end local v2    # "preView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    :cond_3
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->mCurrentPosition:I

    if-ge p1, v3, :cond_0

    .line 109
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "933"

    const-string v5, "9354"

    .line 110
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .restart local v0    # "indexText":Ljava/lang/String;
    .restart local v1    # "nextView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    .restart local v2    # "preView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->adapter:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_5

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->adapter:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->getView(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "preView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    .restart local v2    # "preView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    goto :goto_1

    .line 124
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->adapter:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->getView(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "preView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    .line 125
    .restart local v2    # "preView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity;->adapter:Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/MultipleImageViewerActivity$ImageViewerAdapter;->getView(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "nextView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;

    .restart local v1    # "nextView":Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
    goto :goto_1
.end method
