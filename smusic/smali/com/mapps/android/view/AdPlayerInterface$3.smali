.class Lcom/mapps/android/view/AdPlayerInterface$3;
.super Ljava/lang/Object;
.source "AdPlayerInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdPlayerInterface;->requestVideoURI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdPlayerInterface;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdPlayerInterface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdPlayerInterface$3;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mapps/android/view/AdPlayerInterface$3;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    iget-object v1, p0, Lcom/mapps/android/view/AdPlayerInterface$3;->this$0:Lcom/mapps/android/view/AdPlayerInterface;

    invoke-static {v1}, Lcom/mapps/android/view/AdPlayerInterface;->access$9(Lcom/mapps/android/view/AdPlayerInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdPlayerInterface;->access$0(Lcom/mapps/android/view/AdPlayerInterface;Ljava/lang/String;)V

    .line 215
    return-void
.end method
