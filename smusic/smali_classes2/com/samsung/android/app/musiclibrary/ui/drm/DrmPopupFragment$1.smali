.class Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;
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
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->access$000(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;Ljava/lang/String;)V

    .line 177
    return-void
.end method
