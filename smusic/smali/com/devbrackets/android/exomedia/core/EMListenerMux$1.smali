.class Lcom/devbrackets/android/exomedia/core/EMListenerMux$1;
.super Ljava/lang/Object;
.source "EMListenerMux.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifyPreparedListener()V
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
    .line 247
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux$1;->this$0:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux$1;->this$0:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->access$000(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V

    .line 251
    return-void
.end method
