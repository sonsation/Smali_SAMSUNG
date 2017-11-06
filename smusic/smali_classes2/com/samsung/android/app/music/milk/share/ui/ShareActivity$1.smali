.class Lcom/samsung/android/app/music/milk/share/ui/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity$1;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity$1;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->access$002(Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;Z)Z

    .line 211
    return v1
.end method
