.class Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;
.super Ljava/lang/Object;
.source "AppsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/model/AppsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingAddOrUpdateStruct"
.end annotation


# instance fields
.field mAddedOrUpdatedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPackages:[Ljava/lang/String;

.field mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field final synthetic this$0:Lcom/android/launcher3/allapps/model/AppsModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/model/AppsModel;[Ljava/lang/String;Ljava/util/HashMap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
    .param p2, "packages"    # [Ljava/lang/String;
    .param p4, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1658
    .local p3, "addedOrUpdatedApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->this$0:Lcom/android/launcher3/allapps/model/AppsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1653
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->mAddedOrUpdatedApps:Ljava/util/HashMap;

    .line 1659
    iput-object p2, p0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->mPackages:[Ljava/lang/String;

    .line 1660
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->mAddedOrUpdatedApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1661
    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->mAddedOrUpdatedApps:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1662
    iput-object p4, p0, Lcom/android/launcher3/allapps/model/AppsModel$PendingAddOrUpdateStruct;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1663
    return-void
.end method
