.class public abstract Lcom/android/launcher3/common/model/AbstractUserComparator;
.super Ljava/lang/Object;
.source "AbstractUserComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/common/base/item/ItemInfo;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mMyUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field private final mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    .local p0, "this":Lcom/android/launcher3/common/model/AbstractUserComparator;, "Lcom/android/launcher3/common/model/AbstractUserComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/AbstractUserComparator;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    .line 37
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/AbstractUserComparator;->mMyUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 38
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/android/launcher3/common/model/AbstractUserComparator;, "Lcom/android/launcher3/common/model/AbstractUserComparator<TT;>;"
    .local p1, "lhs":Lcom/android/launcher3/common/base/item/ItemInfo;, "TT;"
    .local p2, "rhs":Lcom/android/launcher3/common/base/item/ItemInfo;, "TT;"
    iget-object v2, p0, Lcom/android/launcher3/common/model/AbstractUserComparator;->mMyUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, -0x1

    .line 47
    :goto_0
    return v2

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/model/AbstractUserComparator;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 46
    .local v0, "aUserSerial":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/launcher3/common/model/AbstractUserComparator;->mUserManager:Lcom/android/launcher3/common/compat/UserManagerCompat;

    iget-object v3, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 47
    .local v1, "bUserSerial":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/android/launcher3/common/model/AbstractUserComparator;, "Lcom/android/launcher3/common/model/AbstractUserComparator<TT;>;"
    check-cast p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast p2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/model/AbstractUserComparator;->compare(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v0

    return v0
.end method
