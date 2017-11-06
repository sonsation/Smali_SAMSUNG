.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SingleItemPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$Builder;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDuration:I

.field private mIndexMargin:I

.field private mIsPreviewCompletion:Z

.field private final mLayoutResId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mPosition:I

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder<*>;"
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 33
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mIsPreviewCompletion:Z

    .line 35
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mIndexMargin:I

    .line 39
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mLayoutResId:I

    .line 40
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$AbsBuilder;)Z

    move-result v0

    .line 41
    .local v0, "indexViewEnabled":Z
    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->sound_picker_list_item_progress_index_margin_end:I

    .line 44
    .local v1, "resId":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mIndexMargin:I

    .line 45
    return-void

    .line 41
    .end local v1    # "resId":I
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->sound_picker_list_item_progress_margin_end:I

    goto :goto_0
.end method

.method private updateProgress(Landroid/widget/ProgressBar;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "progress"    # Landroid/widget/ProgressBar;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getAudioId(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 86
    .local v0, "audioId":J
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mPlayingAudioId:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mProgress:Landroid/widget/ProgressBar;

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mProgress:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mIndexMargin:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$dimen;->sound_picker_list_item_progress_margin_bottom:I

    .line 90
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 89
    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/widget/ProgressBar;->setPaddingRelative(IIII)V

    .line 91
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mPosition:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updatePosition(I)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 94
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getItemViewType(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;->access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->updateProgress(Landroid/widget/ProgressBar;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method protected bridge synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, -0x1

    .line 69
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mText1Index:I

    if-eq v1, v4, :cond_0

    .line 70
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mText1Index:I

    .line 71
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "text":Ljava/lang/CharSequence;
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mText2Index:I

    if-eq v1, v4, :cond_1

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mText2Index:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mText3Index:I

    if-eq v1, v4, :cond_2

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mText3Index:I

    .line 79
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 49
    if-nez p3, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mLayoutResId:I

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 53
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public resetPlayingItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mPlayingAudioId:J

    .line 128
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mDuration:I

    .line 129
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mPosition:I

    .line 130
    return-void
.end method

.method public setPreviewCompletion(Z)V
    .locals 0
    .param p1, "completion"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mIsPreviewCompletion:Z

    .line 100
    return-void
.end method

.method public updateDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mDuration:I

    .line 107
    return-void
.end method

.method public updatePosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mProgress:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mIsPreviewCompletion:Z

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mProgress:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    :goto_1
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mPosition:I

    goto :goto_0

    .line 116
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mDuration:I

    if-lez v1, :cond_2

    .line 117
    mul-int/lit16 v1, p1, 0x3e8

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mDuration:I

    div-int v0, v1, v2

    .line 118
    .local v0, "progress":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 120
    .end local v0    # "progress":I
    :cond_2
    const-string v1, "SoundPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updatePosition() - duration < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
