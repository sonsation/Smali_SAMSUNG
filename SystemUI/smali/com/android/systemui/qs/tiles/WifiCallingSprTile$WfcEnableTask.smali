.class Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;
.super Landroid/os/AsyncTask;
.source "WifiCallingSprTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingSprTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcEnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap3(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v4, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    :cond_0
    move v0, v1

    .line 341
    .local v0, "isTransitioning":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 342
    return-void

    .end local v0    # "isTransitioning":Z
    :cond_1
    move v0, v2

    .line 340
    goto :goto_0

    .line 344
    .restart local v0    # "isTransitioning":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Spr DB update, reset dim to false!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-set0(Z)Z

    .line 346
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 347
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap4(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Ljava/lang/Object;)V

    .line 339
    :goto_1
    return-void

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingSprTile;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile;->-wrap4(Lcom/android/systemui/qs/tiles/WifiCallingSprTile;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 339
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "state":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingSprTile$WfcEnableTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
