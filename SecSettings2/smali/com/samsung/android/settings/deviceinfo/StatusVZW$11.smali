.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;->requestFocusFromBixby(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/StatusVZW;
    .param p2, "val$key"    # Ljava/lang/String;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 616
    :cond_0
    return-void
.end method
