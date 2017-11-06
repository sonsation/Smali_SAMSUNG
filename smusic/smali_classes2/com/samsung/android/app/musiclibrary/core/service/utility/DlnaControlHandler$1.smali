.class Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;
.super Ljava/lang/Object;
.source "DlnaControlHandler.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceBind()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "SV-Dlna"

    const-string v1, "onServiceBind() is called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;Z)Z

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;Z)Z

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;->onDlnaServiceBound()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->access$202(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    .line 152
    :cond_0
    return-void
.end method
