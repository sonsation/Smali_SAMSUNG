.class public Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "BigPondAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;,
        Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;"
    }
.end annotation


# instance fields
.field private mController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

.field protected mDefaultMainTextColor:I

.field protected mDefaultSubTextColor:I

.field private mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    const v2, 0x7f110044

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mDefaultMainTextColor:I

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mDefaultSubTextColor:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;
    .param p1, "x1"    # Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;
    .param p2, "x2"    # Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->setModelController(Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;)V

    return-void
.end method

.method private setModelController(Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;)V
    .locals 0
    .param p1, "model"    # Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;
    .param p2, "ctrl"    # Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    .line 59
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->getHeaderViewCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->getHeaderViewCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 64
    const/16 v0, -0x7d1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getValidItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->getItemViewType(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->getHeaderViewCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 104
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder () position - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->getItemViewType(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 124
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    invoke-interface {v2}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    invoke-interface {v2}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mModel:Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;

    invoke-interface {v2}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->getModifiedPosition(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    .line 110
    .local v0, "musicinfo":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    .local v1, "thumbImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 113
    iget-object v2, p1, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    :cond_1
    iget-object v2, p1, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, p1, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p1, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mDefaultMainTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v2, p1, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;->mArtist:Landroid/widget/TextView;

    iget v3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mDefaultSubTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 122
    .end local v0    # "musicinfo":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    .end local v1    # "thumbImage":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mTag:Ljava/lang/String;

    const-string v3, "onBindViewHolder () is empty!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder () viewtype -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez p3, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 99
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onUpdate(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    const v1, 0x7f0a0480

    const/4 v3, 0x0

    const/4 v2, 0x6

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;->onUpdate(I)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;->onUpdate(I)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;->onUpdate(I)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0481

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;->onUpdate(I)V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->mController:Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;->onUpdate(I)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
