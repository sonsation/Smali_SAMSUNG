.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher$1;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 1040
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    .line 1041
    .local v2, "p":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;
    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->access$1300(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;

    .line 1042
    .local v0, "holder":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1043
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher$1;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->access$1400(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1044
    const-string v3, "ArtWork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "publish to image view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1045
    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->access$1500(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1044
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f120118

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1048
    .local v1, "maskView":Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->access$1500(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1049
    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->access$1500(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1050
    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 1051
    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100fd

    invoke-static {v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 1050
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1058
    .end local v1    # "maskView":Landroid/view/View;
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1054
    .restart local v1    # "maskView":Landroid/view/View;
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;->access$1600(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$MArtWorkCacheImageViewPublisher;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
