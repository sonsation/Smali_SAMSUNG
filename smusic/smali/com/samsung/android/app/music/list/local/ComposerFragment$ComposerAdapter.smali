.class public Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "ComposerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ComposerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComposerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 12
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 231
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mText1Index:I

    .line 232
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0004

    iget v8, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mText2Index:I

    .line 235
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mText2Index:I

    .line 236
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 235
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "text":Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 238
    .local v0, "content":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    .local v4, "talkBack":Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mText3Index:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 240
    iget v6, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mText3Index:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 241
    .local v2, "duration":J
    const-string v1, ""

    .line 242
    .local v1, "description":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 243
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_0
    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 246
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string v6, "   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mContext:Landroid/content/Context;

    long-to-int v8, v2

    .line 248
    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 250
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "duration":J
    :cond_1
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 222
    if-nez p3, :cond_0

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401b9

    const/4 v2, 0x0

    .line 224
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 226
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0
.end method
