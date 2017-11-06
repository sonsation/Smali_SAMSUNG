.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "RadioHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->validateStationMoreMenu(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

.field final synthetic val$holder:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;->val$holder:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasStation"    # Ljava/lang/Boolean;

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;->val$holder:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationMoreMenu:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;->val$holder:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationMoreMenu:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;->val$holder:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationMoreMenu:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;->val$holder:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;->stationMoreMenu:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
