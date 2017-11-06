.class Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;
.super Ljava/lang/Thread;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$000(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)I

    .line 1418
    return-void
.end method
