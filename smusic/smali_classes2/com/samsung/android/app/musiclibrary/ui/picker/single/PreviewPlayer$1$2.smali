.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$2;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->onExtractError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

.field final synthetic val$errMsgResId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$2;->val$errMsgResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$2;->val$errMsgResId:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)V

    .line 400
    return-void
.end method
