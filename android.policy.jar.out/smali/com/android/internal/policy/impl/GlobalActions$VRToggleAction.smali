.class Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 6

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1719
    const v1, 0x1080450

    const v2, 0x108044f

    const v3, 0x10406ee

    const v4, 0x10406f0

    const v5, 0x10406ef

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1724
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1727
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->getSplitStatus()I
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500(Lcom/android/internal/policy/impl/GlobalActions;)I

    move-result v1

    .line 1728
    .local v1, "status":I
    if-eqz v1, :cond_1

    move v0, v2

    .line 1729
    .local v0, "state":Z
    :goto_0
    if-ne p1, v0, :cond_2

    .line 1741
    :cond_0
    :goto_1
    return-void

    .end local v0    # "state":Z
    :cond_1
    move v0, v3

    .line 1728
    goto :goto_0

    .line 1732
    .restart local v0    # "state":Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v5, "com.snailvr.manager"

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isAppOnForeground(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$2600(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1735
    if-nez v1, :cond_3

    .line 1736
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->enableSplitDisplay(I)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$2700(Lcom/android/internal/policy/impl/GlobalActions;I)V

    goto :goto_1

    .line 1737
    :cond_3
    if-ne v1, v2, :cond_0

    .line 1738
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->enableSplitDisplay(I)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$2700(Lcom/android/internal/policy/impl/GlobalActions;I)V

    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1758
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1754
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 2

    .prologue
    .line 1744
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->getSplitStatus()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500(Lcom/android/internal/policy/impl/GlobalActions;)I

    move-result v0

    .line 1745
    .local v0, "status":I
    if-nez v0, :cond_1

    .line 1746
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1747
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1748
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$VRToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method