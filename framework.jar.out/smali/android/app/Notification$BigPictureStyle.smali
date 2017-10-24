.class public Landroid/app/Notification$BigPictureStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# static fields
.field public static final MIN_ASHMEM_BITMAP_SIZE:I = 0x20000


# instance fields
.field private mBigLargeIcon:Landroid/graphics/drawable/Icon;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4282
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4280
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 4282
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4289
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4280
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 4290
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4289
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4387
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4389
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v0, :cond_0

    .line 4390
    const-string/jumbo v0, "android.largeIcon.big"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4392
    :cond_0
    const-string/jumbo v0, "android.picture"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4386
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 4322
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    return-object v0
.end method

.method public bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 4329
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 4330
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    .line 4331
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4314
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 4315
    return-object p0
.end method

.method public hasSummaryInHeader()Z
    .locals 1

    .prologue
    .line 4414
    const/4 v0, 0x0

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const v4, 0x1020090

    .line 4362
    const/4 v1, 0x0

    .line 4363
    .local v1, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    iget-boolean v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v2, :cond_0

    .line 4364
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 4365
    .local v1, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v2, v3}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4368
    .end local v1    # "oldLargeIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Notification$BigPictureStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4369
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-boolean v2, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz v2, :cond_1

    .line 4370
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4371
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4373
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    .line 4375
    iget-boolean v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v2, :cond_2

    .line 4376
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4379
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    const v3, 0x1020442

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4380
    return-object v0
.end method

.method public purgeResources()V
    .locals 2

    .prologue
    .line 4342
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 4343
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4344
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    .line 4343
    if-eqz v0, :cond_0

    .line 4345
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 4346
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 4348
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    .line 4349
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 4341
    :cond_1
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4400
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4402
    const-string/jumbo v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4403
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 4404
    const-string/jumbo v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    .line 4406
    :cond_0
    const-string/jumbo v0, "android.picture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 4399
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4298
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4299
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4306
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4307
    return-object p0
.end method
