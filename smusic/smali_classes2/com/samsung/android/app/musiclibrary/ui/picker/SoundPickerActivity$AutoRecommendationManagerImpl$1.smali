.class Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$1;
.super Ljava/lang/Object;
.source "SoundPickerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 485
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "6007"

    if-eqz p2, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;->access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$AutoRecommendationManagerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;

    .line 490
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;
    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;->autoRecommendationOnChanged(Z)V

    goto :goto_1

    .line 485
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/picker/single/AutoRecommendationManager$AutoRecommendationOnListener;
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 492
    :cond_1
    return-void
.end method
