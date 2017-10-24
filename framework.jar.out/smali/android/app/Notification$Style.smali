.class public abstract Landroid/app/Notification$Style;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field private mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/app/Notification$Builder;

.field protected mSummaryText:Ljava/lang/CharSequence;

.field protected mSummaryTextSet:Z


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4093
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4098
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 4087
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4186
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_0

    .line 4187
    const-string/jumbo v0, "android.summaryText"

    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4189
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 4190
    const-string/jumbo v0, "android.title.big"

    iget-object v1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4192
    :cond_1
    const-string/jumbo v0, "android.template"

    invoke-virtual {p0}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4185
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 4230
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 4231
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4214
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4215
    return-object p1
.end method

.method protected checkBuilder()V
    .locals 2

    .prologue
    .line 4128
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 4129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Style requires a valid Builder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4127
    :cond_0
    return-void
.end method

.method public displayCustomViewInline()Z
    .locals 1

    .prologue
    .line 4256
    const/4 v0, 0x0

    return v0
.end method

.method protected getStandardView(I)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "layoutId"    # I

    .prologue
    const v4, 0x102044d

    .line 4134
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 4138
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4139
    .local v1, "oldBuilderContentTitle":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 4140
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4143
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, p1}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4145
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.title"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4147
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4148
    const/16 v2, 0x8

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4153
    :goto_0
    return-object v0

    .line 4150
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method protected hasProgress()Z
    .locals 1

    .prologue
    .line 4240
    const/4 v0, 0x1

    return v0
.end method

.method public hasSummaryInHeader()Z
    .locals 1

    .prologue
    .line 4248
    const/4 v0, 0x1

    return v0
.end method

.method protected internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4107
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 4106
    return-void
.end method

.method protected internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4114
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 4113
    return-void
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 4170
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 4162
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 4178
    const/4 v0, 0x0

    return-object v0
.end method

.method public purgeResources()V
    .locals 0

    .prologue
    .line 4221
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4200
    const-string/jumbo v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4201
    const-string/jumbo v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 4204
    :cond_0
    const-string/jumbo v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4205
    const-string/jumbo v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 4199
    :cond_1
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4119
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eq v0, p1, :cond_0

    .line 4120
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 4121
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 4122
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 4118
    :cond_0
    return-void
.end method
