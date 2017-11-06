.class Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$4;
.super Ljava/lang/Object;
.source "MilkWorkerRemoveFromMyStation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->showingRemovePersonalStation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$4;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation$4;->this$0:Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerRemoveFromMyStation;->onDialogNegativeClick()V

    .line 271
    return-void
.end method
