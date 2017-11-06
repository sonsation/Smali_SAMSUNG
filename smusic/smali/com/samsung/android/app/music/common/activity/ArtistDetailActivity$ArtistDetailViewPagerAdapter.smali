.class Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "ArtistDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtistDetailViewPagerAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGroupType:I

.field private final mKeyWord:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;Landroid/content/Context;Landroid/app/FragmentManager;Ljava/lang/String;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p4, "keyword"    # Ljava/lang/String;
    .param p5, "groupType"    # I

    .prologue
    .line 238
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    .line 239
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 240
    iput-object p2, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 241
    iput-object p4, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mKeyWord:Ljava/lang/String;

    .line 242
    iput p5, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mGroupType:I

    .line 243
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$100(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$100(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArtistDetailViewPagerAdapter getItem() wrong position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :pswitch_0
    const v0, 0x110027

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mKeyWord:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mGroupType:I

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->newInstance(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x10027

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mKeyWord:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mGroupType:I

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->newInstance(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$100(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$100(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong position | position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
