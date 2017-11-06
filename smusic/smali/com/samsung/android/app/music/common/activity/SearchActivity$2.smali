.class Lcom/samsung/android/app/music/common/activity/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->access$000(Lcom/samsung/android/app/music/common/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v0, -0x1

    .line 345
    .local v0, "contentType":I
    const/4 v2, 0x0

    .line 346
    .local v2, "selectedTabForLog":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 357
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->access$100(Lcom/samsung/android/app/music/common/activity/SearchActivity;)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 358
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->access$102(Lcom/samsung/android/app/music/common/activity/SearchActivity;I)I

    .line 359
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->access$100(Lcom/samsung/android/app/music/common/activity/SearchActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->access$200(Lcom/samsung/android/app/music/common/activity/SearchActivity;I)V

    .line 360
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->access$300(Lcom/samsung/android/app/music/common/activity/SearchActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->access$300(Lcom/samsung/android/app/music/common/activity/SearchActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 362
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "current_contents"

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/SearchActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->access$100(Lcom/samsung/android/app/music/common/activity/SearchActivity;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 368
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "961"

    .line 369
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_1
    return-void

    .line 348
    :pswitch_0
    const/4 v0, 0x0

    .line 349
    const-string v2, "7152"

    .line 350
    goto :goto_0

    .line 352
    :pswitch_1
    const/4 v0, 0x1

    .line 353
    const-string v2, "9601"

    .line 354
    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x7f12004e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
