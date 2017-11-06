.class Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;
.super Ljava/lang/Object;
.source "DrmPopupFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v8, 0x0

    .line 232
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-static {v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->access$100(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;Ljava/lang/String;)J

    move-result-wide v2

    .line 235
    .local v2, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 236
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 237
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 239
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v8, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->deleted:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 244
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v5, "MusicDrm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
