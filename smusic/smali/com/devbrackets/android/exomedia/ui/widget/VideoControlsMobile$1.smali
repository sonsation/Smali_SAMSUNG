.class Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$1;
.super Ljava/lang/Object;
.source "VideoControlsMobile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->hideDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;


# direct methods
.method constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$1;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$1;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->animateVisibility(Z)V

    .line 147
    return-void
.end method
