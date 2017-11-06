.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;
.super Ljava/lang/Object;
.source "TagWidget.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TagPresenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private mNeedUpdate:Z

.field private final mPipe:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

.field private final mTagCache:[Ljava/lang/CharSequence;

.field private final mUpdateTable:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method varargs constructor <init>(Landroid/view/View;[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)V
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "pipe"    # [Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p2, :cond_0

    const/4 v3, 0x0

    .line 31
    .local v3, "length":I
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mAnchorView:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mPipe:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .line 34
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mPipe:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    if-eqz v4, :cond_1

    .line 35
    new-array v4, v3, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mTagCache:[Ljava/lang/CharSequence;

    .line 36
    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mUpdateTable:[Z

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "id":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "id":I
    .local v2, "id":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 39
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mUpdateTable:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v0

    .line 40
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mPipe:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    aget-object v4, v4, v0

    invoke-static {v4, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->access$000(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable$OnValueChangedListener;)V

    .line 41
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mPipe:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    aget-object v4, v4, v0

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "id":I
    .restart local v1    # "id":I
    invoke-static {v4, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->access$100(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;I)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "id":I
    .restart local v2    # "id":I
    goto :goto_1

    .line 30
    .end local v0    # "i":I
    .end local v2    # "id":I
    .end local v3    # "length":I
    :cond_0
    array-length v3, p2

    goto :goto_0

    .line 44
    .restart local v3    # "length":I
    :cond_1
    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mTagCache:[Ljava/lang/CharSequence;

    .line 45
    iput-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mUpdateTable:[Z

    .line 47
    :cond_2
    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)V
    .locals 3
    .param p1, "o"    # Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mUpdateTable:[Z

    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->access$400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)I

    move-result v1

    aput-boolean v2, v0, v1

    .line 81
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mNeedUpdate:Z

    .line 82
    return-void
.end method

.method public update()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 50
    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mNeedUpdate:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mPipe:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    if-nez v5, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    .local v0, "index":I
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 55
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 56
    .local v1, "needToUpdateText":Z
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mPipe:[Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v2, v7, v5

    .line 58
    .local v2, "o":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    sget-object v9, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update tag : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 60
    .local v4, "ssb2":Landroid/text/SpannableStringBuilder;
    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->access$300(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mAnchorView:Landroid/view/View;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11, v4, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;->update(Landroid/view/View;Ljava/lang/Object;Landroid/text/SpannableStringBuilder;I)Z

    move-result v9

    or-int/2addr v1, v9

    .line 61
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 64
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mTagCache:[Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->access$400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)I

    move-result v10

    aput-object v4, v9, v10

    .line 65
    iget-object v9, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mUpdateTable:[Z

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;->access$400(Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;)I

    move-result v10

    aput-boolean v6, v9, v10

    .line 66
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 56
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    .end local v2    # "o":Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagObservable;
    .end local v4    # "ssb2":Landroid/text/SpannableStringBuilder;
    :cond_3
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mAnchorView:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 70
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mAnchorView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/TagWidget$TagPresenter;->mAnchorView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
