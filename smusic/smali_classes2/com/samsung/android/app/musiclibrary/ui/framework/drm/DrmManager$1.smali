.class Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;
.super Ljava/lang/Thread;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getInvalidPlayReadyDrmPopup(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$000(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)I

    .line 911
    return-void
.end method
