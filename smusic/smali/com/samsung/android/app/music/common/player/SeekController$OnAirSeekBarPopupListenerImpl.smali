.class Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;
.super Ljava/lang/Object;
.source "SeekController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnAirSeekBarPopupListenerImpl"
.end annotation


# static fields
.field private static final AIR_VIEW_TAIL_GAP:I = 0x28

.field private static final POPUP_INTERVAL:I = 0xa

.field private static final POPUP_Y_POSITION:I = 0x0

.field private static final POSITION_CENTER:I = 0x1

.field private static final POSITION_LEFT:I = 0x2

.field private static final POSITION_NONE:I = 0x0

.field private static final POSITION_RIGHT:I = 0x3


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAirViewPosition:I

.field private mIsSeekInfoPopupShowing:Z

.field private mMarginPoint:I

.field private mSeekInfoPopup:Landroid/view/View;

.field private final mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

.field private mX:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uiUpdater"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mMarginPoint:I

    .line 920
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mAirViewPosition:I

    .line 925
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mActivity:Landroid/app/Activity;

    .line 926
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 927
    return-void
.end method

.method private calculatePositionAndUpdateBackground(I)I
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 999
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mSeekInfoPopup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, -0x28

    .line 1000
    .local v0, "x":I
    if-gez v0, :cond_1

    .line 1001
    const/4 v1, 0x0

    .line 1035
    :cond_0
    :goto_0
    return v1

    .line 1004
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1005
    const/16 v2, 0x28

    iput v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mMarginPoint:I

    .line 1010
    :goto_1
    iget v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mMarginPoint:I

    if-ge p1, v2, :cond_3

    .line 1011
    iget v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mAirViewPosition:I

    if-eq v2, v4, :cond_0

    .line 1015
    iput v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mAirViewPosition:I

    :goto_2
    move v1, v0

    .line 1035
    goto :goto_0

    .line 1007
    :cond_2
    const/16 v2, 0x46

    iput v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mMarginPoint:I

    goto :goto_1

    .line 1016
    :cond_3
    iget v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mMarginPoint:I

    rsub-int v2, v2, 0x3e8

    if-le p1, v2, :cond_4

    .line 1017
    iget v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mAirViewPosition:I

    if-eq v2, v5, :cond_0

    .line 1021
    iput v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mAirViewPosition:I

    .line 1022
    mul-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1024
    :cond_4
    iget v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mAirViewPosition:I

    if-ne v1, v3, :cond_5

    .line 1028
    rem-int/lit8 v1, p1, 0xa

    mul-int/lit8 v0, v1, -0x1

    goto :goto_2

    .line 1031
    :cond_5
    iput v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mAirViewPosition:I

    .line 1032
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateProgressAirView(I)Landroid/view/View;
    .locals 14
    .param p1, "progress"    # I

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v6, 0x0

    .line 963
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mSeekInfoPopup:Landroid/view/View;

    if-nez v5, :cond_0

    .line 964
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f040095

    .line 965
    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mSeekInfoPopup:Landroid/view/View;

    .line 968
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mIsSeekInfoPopupShowing:Z

    if-nez v5, :cond_1

    .line 969
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mSeekInfoPopup:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 970
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    .line 971
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mSeekInfoPopup:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 972
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->getDurationTimeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mActivity:Landroid/app/Activity;

    .line 973
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0311

    .line 974
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 975
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mSeekInfoPopup:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mIsSeekInfoPopupShowing:Z

    .line 980
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->getDuration()J

    move-result-wide v8

    int-to-long v10, p1

    mul-long/2addr v8, v10

    div-long v2, v8, v12

    .line 981
    .local v2, "pos":J
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    div-long v8, v2, v12

    invoke-static {v5, v8, v9}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "time":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mSeekInfoPopup:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->calculatePositionAndUpdateBackground(I)I

    move-result v4

    .line 985
    .local v4, "x":I
    if-ltz v4, :cond_2

    .line 986
    iput v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mX:I

    .line 987
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mSeekInfoPopup:Landroid/view/View;

    .line 989
    :goto_0
    return-object v5

    :cond_2
    move-object v5, v6

    goto :goto_0
.end method


# virtual methods
.method public getHoverChangedView(Landroid/widget/SeekBar;IZ)Landroid/view/View;
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 953
    if-eqz p3, :cond_0

    .line 954
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->updateProgressAirView(I)Landroid/view/View;

    move-result-object v0

    .line 956
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    return v0
.end method

.method public getStartTrackingHoverView(Landroid/widget/SeekBar;I)Landroid/view/View;
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I

    .prologue
    .line 947
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mAirViewPosition:I

    .line 948
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->updateProgressAirView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getStopTrackingHoverView(Landroid/widget/SeekBar;)Landroid/view/View;
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;->mIsSeekInfoPopupShowing:Z

    .line 942
    const/4 v0, 0x0

    return-object v0
.end method

.method public setHoverPositionX(I)V
    .locals 0
    .param p1, "posX"    # I

    .prologue
    .line 1040
    return-void
.end method
