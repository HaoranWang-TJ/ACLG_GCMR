REWARD_SHAPING=$1
TIMESTEPS=$2
GPU=$3
SEED=$4

CUDA_VISIBLE_DEVICES=${GPU} python main.py \
--env_name "AntMaze-v1" \
--reward_shaping ${REWARD_SHAPING} \
--algo aclg \
--version "${REWARD_SHAPING}_stochastic_0.05" \
--goal_loss_coeff 20 \
--landmark_loss_coeff 1 \
--seed ${SEED} \
--max_timesteps ${TIMESTEPS} \
--landmark_sampling fps \
--n_landmark_coverage 60 \
--use_novelty_landmark \
--novelty_algo rnd \
--n_landmark_novelty 60 \
--seed ${SEED} \
--stochastic_xy \
--stochastic_sigma 0.05