.class Lcom/samsung/android/settings/display/FontPreview$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FontPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreview;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/FontPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FontPreview;

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$LoadListTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FontPreview;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1629
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1631
    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1632
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3, v7}, Lcom/samsung/android/settings/display/FontPreview;->-set0(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1634
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/FontPreview;->-set0(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1637
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1639
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 1642
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1647
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-wrap0(Lcom/samsung/android/settings/display/FontPreview;)Ljava/lang/String;

    move-result-object v2

    .line 1648
    .local v2, "fontName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1649
    .local v1, "fontIndexPref":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "flip_font_style"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    .end local v1    # "fontIndexPref":I
    .end local v2    # "fontName":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "FontPreview loading dialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "this is regarding debugging. it is not problem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->cancel(Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "unused"    # Ljava/lang/Object;

    .prologue
    .line 1660
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "unused":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 1663
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FontPreview;->-get14(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FontPreview;->-get5(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1664
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FontPreview;->-get14(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1665
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FontPreview;->-get5(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1666
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap1(Lcom/samsung/android/settings/display/FontPreview;I)V

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get15(Lcom/samsung/android/settings/display/FontPreview;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap4(Lcom/samsung/android/settings/display/FontPreview;Landroid/os/Bundle;)V

    .line 1669
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/FontPreview;->-set4(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    iget-object v3, v3, Lcom/samsung/android/settings/display/FontPreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FontPreview;->-get0(Lcom/samsung/android/settings/display/FontPreview;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 1660
    return-void

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "FlipFont"

    const-string/jumbo v2, "dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get14(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get5(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get14(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1622
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FontPreview;->-get5(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FontPreview;->-set4(Lcom/samsung/android/settings/display/FontPreview;Z)Z

    .line 1619
    return-void
.end method
