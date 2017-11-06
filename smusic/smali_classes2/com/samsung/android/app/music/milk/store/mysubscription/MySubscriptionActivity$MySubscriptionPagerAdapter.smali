.class public Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "MySubscriptionActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$PagePosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySubscriptionPagerAdapter"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mTabIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;Landroid/app/Activity;Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    .line 135
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mTabIds:Ljava/util/ArrayList;

    .line 137
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mTabIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mTabIds:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mTabIds:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 162
    const-string v0, "MySubscriptionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MySubscriptionPagerAdapter getItem unknown position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 156
    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionsFragment;-><init>()V

    goto :goto_0

    .line 158
    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;-><init>()V

    goto :goto_0

    .line 160
    :pswitch_2
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;-><init>()V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 179
    const-string v1, "MySubscriptionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MySubscriptionPagerAdapter getPageTitle unknown position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$MySubscriptionPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0322

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
