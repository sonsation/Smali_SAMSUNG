.class public Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
.super Ljava/lang/Object;
.source "MilkAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

.field mCancleable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->mCancleable:Z

    .line 160
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    .line 161
    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;-><init>()V

    .line 301
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->access$300(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;)V

    .line 302
    return-object v0
.end method

.method public setCancelable(Z)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCancleable:Z

    .line 294
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCancleableOnTouchOutside:Z

    .line 290
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "customView"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCustomView:Landroid/view/View;

    .line 195
    return-object p0
.end method

.method public setDescription(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1, "descriptionId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mDescription:Ljava/lang/CharSequence;

    .line 185
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mDescription:Ljava/lang/CharSequence;

    .line 190
    return-object p0
.end method

.method public setEnableService(Z)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-boolean p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mEnableService:Z

    .line 285
    return-object p0
.end method

.method public setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 175
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 180
    return-object p0
.end method

.method public setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 241
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 230
    return-object p0
.end method

.method public setNegativeButton(ILjava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "eventId"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeEventId:Ljava/lang/String;

    .line 246
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeEventId:Ljava/lang/String;

    .line 236
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 263
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 252
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventId"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeEventId:Ljava/lang/String;

    .line 268
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeEventId:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 274
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 280
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 206
    return-object p0
.end method

.method public setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "textId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveEventId:Ljava/lang/String;

    .line 212
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 218
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveEventId:Ljava/lang/String;

    .line 224
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "screenId"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mScreenId:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 165
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->P:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 170
    return-object p0
.end method
