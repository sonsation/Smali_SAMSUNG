.class Lcom/devbrackets/android/exomedia/core/EMListenerMux$2;
.super Ljava/lang/Object;
.source "EMListenerMux.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifyCompletionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/EMListenerMux;


# direct methods
.method constructor <init>(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux$2;->this$0:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux$2;->this$0:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->access$100(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux$2;->this$0:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->access$100(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;->onCompletion()V

    .line 276
    :cond_0
    return-void
.end method
