.class Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
.super Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Callbacks"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method


# virtual methods
.method public changeVisibleEdgeService(ZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 197
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 198
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x66

    invoke-virtual {v0, v3, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 202
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void

    .line 201
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public closeContextualCocktail(III)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .param p3, "userId"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 118
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 122
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public notifyKeyguardState(ZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 147
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 148
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x64

    invoke-virtual {v0, v3, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 152
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void

    .line 151
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyWakeUpState(ZII)V
    .locals 5
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 157
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 158
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v0, v4, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 162
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 156
    return-void

    .line 161
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I

    .prologue
    .line 87
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 88
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 92
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 86
    return-void
.end method

.method public removeCocktail(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 97
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 98
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 102
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method

.method public sendExtraData(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 177
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 178
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 182
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method public setDisableTickerView(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .prologue
    .line 187
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 188
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 192
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 186
    return-void
.end method

.method public setPullToRefresh(IILandroid/app/PendingIntent;I)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 209
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    const/16 v2, 0xd

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 213
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void
.end method

.method public showCocktail(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 107
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 108
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 112
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method public switchDefaultCocktail(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 167
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 168
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 172
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method

.method public updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I

    .prologue
    .line 77
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 78
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 82
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 76
    return-void
.end method

.method public updateToolLauncher(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 137
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 138
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 142
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void
.end method

.method public viewDataChanged(III)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 127
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 128
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method
