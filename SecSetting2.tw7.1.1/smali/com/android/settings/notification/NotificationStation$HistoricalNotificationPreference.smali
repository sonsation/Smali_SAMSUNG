.class Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;
.super Lcom/android/settings/CopyablePreference;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoricalNotificationPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/android/settings/CopyablePreference;-><init>(Landroid/content/Context;)V

    .line 535
    const v0, 0x7f0401d1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->setLayoutResource(I)V

    .line 536
    iput-object p2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    .line 533
    return-void
.end method


# virtual methods
.method public getCopyableText()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 572
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 573
    const-string/jumbo v1, " ["

    .line 572
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 573
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 574
    const-string/jumbo v1, "]\n"

    .line 572
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 572
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 575
    const-string/jumbo v1, "\n"

    .line 572
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    .line 572
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 541
    invoke-super {p0, p1}, Lcom/android/settings/CopyablePreference;->onBindView(Landroid/view/View;)V

    .line 543
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 544
    const v1, 0x7f1100e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 547
    const v1, 0x7f1105d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    :cond_1
    const v1, 0x7f1105da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 551
    const v1, 0x7f1100e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    const v1, 0x7f1105db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    const v1, 0x7f1105dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 555
    .local v0, "extra":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    new-instance v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference$1;-><init>(Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V

    .line 558
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 540
    return-void

    .line 567
    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 581
    const-string/jumbo v2, "package"

    iget-object v3, p0, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 580
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 582
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationStation$HistoricalNotificationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 579
    return-void
.end method
