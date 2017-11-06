.class Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask$1;
.super Ljava/lang/Object;
.source "DeepLinkTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->preExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask$1;->this$0:Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 46
    return-void
.end method
