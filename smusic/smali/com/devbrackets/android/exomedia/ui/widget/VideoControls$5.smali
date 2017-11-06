.class Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$5;
.super Ljava/lang/Object;
.source "VideoControls.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;


# direct methods
.method constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$5;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$5;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateProgress()V

    .line 625
    return-void
.end method
