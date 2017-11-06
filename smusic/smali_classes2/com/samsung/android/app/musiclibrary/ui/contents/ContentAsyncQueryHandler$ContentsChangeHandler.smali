.class Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;
.super Landroid/os/Handler;
.source "ContentAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentsChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->access$000(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->access$100(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->access$200(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentsChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->access$300(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;->access$400(Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    return-void
.end method
