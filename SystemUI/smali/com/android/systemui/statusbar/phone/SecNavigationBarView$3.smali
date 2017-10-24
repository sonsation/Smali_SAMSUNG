.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;
.super Ljava/lang/Object;
.source "SecNavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateContainer()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->-wrap2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    .line 304
    return-void
.end method
