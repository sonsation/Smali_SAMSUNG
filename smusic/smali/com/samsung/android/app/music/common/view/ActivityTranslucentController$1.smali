.class Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;
.super Ljava/lang/Object;
.source "ActivityTranslucentController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat$TranslucentConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;->this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslucentConversionComplete(Z)V
    .locals 2
    .param p1, "drawComplete"    # Z

    .prologue
    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;->this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->access$100(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController$1;->this$0:Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;->access$202(Lcom/samsung/android/app/music/common/view/ActivityTranslucentController;Z)Z

    .line 87
    return-void
.end method
