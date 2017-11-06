.class Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$2;
.super Ljava/lang/Object;
.source "MilkDownloadServiceStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->onFailed(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$2;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$2;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$100(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub$2;->this$0:Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;->access$100(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceStub;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    return-void
.end method
