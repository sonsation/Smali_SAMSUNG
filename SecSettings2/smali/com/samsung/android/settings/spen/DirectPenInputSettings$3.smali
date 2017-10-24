.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0b0c5c

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 338
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6, v10}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-set1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Z)Z

    .line 339
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get2(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    .line 340
    .local v5, "writingBuddyOn":Z
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x1

    .line 341
    .local v1, "MagnificationResult":Z
    :goto_1
    const/4 v0, 0x0

    .line 342
    .local v0, "HoverZoomResult":Z
    const/4 v3, 0x0

    .line 344
    .local v3, "magnifier":Z
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    .line 346
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "finger_magnifier"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x1

    .line 348
    :cond_0
    :goto_3
    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get4(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 364
    :cond_1
    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get4(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 369
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-wrap1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    .line 337
    :goto_4
    return-void

    .line 339
    .end local v0    # "HoverZoomResult":Z
    .end local v1    # "MagnificationResult":Z
    .end local v3    # "magnifier":Z
    .end local v5    # "writingBuddyOn":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "writingBuddyOn":Z
    goto :goto_0

    .line 340
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "MagnificationResult":Z
    goto :goto_1

    .line 345
    .restart local v0    # "HoverZoomResult":Z
    .restart local v3    # "magnifier":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 346
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 348
    :cond_7
    if-nez v1, :cond_8

    if-nez v0, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v3, :cond_1

    .line 349
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v8, 0x7f0b0c66

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "descMessage":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 352
    .local v4, "message":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.app.talkback"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v8, 0x7f0b024b

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.google.android.marvin.talkback"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v8, 0x7f0b024a

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b157a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v8, 0x7f0b0233

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v6, v2, v4, v10}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 365
    .end local v2    # "descMessage":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v7, 0x7f0b0c67

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 366
    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v8, v11}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v8, v11}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 365
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .restart local v2    # "descMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v2, v7, v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4
.end method
